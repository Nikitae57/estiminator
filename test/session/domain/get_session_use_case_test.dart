import 'package:estiminator/session/domain/get_session_use_case.dart';
import 'package:estiminator/session/domain/model/estimation_domain_model.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:estiminator/session/domain/session_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_session_use_case_test.mocks.dart';

const _SCALE_NAME = 'scale name';
const _SCALE_VALUES = ['1', '2', '3'];
const _SCALE_DOMAIN_MODEL = EstimationScaleDomainModel(name: _SCALE_NAME, values: _SCALE_VALUES);

const _ID = 'id';
const _TITLE = 'title';
const _CREATOR_UID = 'creator uid';
const _CURRENT_TASK_INDEX = 1;
const _IS_FINISHED = false;
const _ESTIMATION = '1';
const _SESSION_DOMAIN_MODEL = SessionDomainModel(
    id: _ID,
    title: _TITLE,
    creatorUid: _CREATOR_UID,
    currentTaskIndex: _CURRENT_TASK_INDEX,
    isFinished: _IS_FINISHED,
    tasks: [
      TaskDomainModel(
        title: _TITLE,
        estimations: [EstimationDomainModel(value: _ESTIMATION, creatorUid: _CREATOR_UID)],
      )
    ]);

const _FULL_SESSION_DOMAIN_MODEL = FullSessionDomainModel(
  session: _SESSION_DOMAIN_MODEL,
  estimationScale: _SCALE_DOMAIN_MODEL,
);

final _error = Exception();

@GenerateMocks([ISessionRepo])
void main() {
  final sessionRepo = MockISessionRepo();
  final useCase = GetSessionUseCase(sessionRepo);

  group('GetSessionUseCase tests - ', () {
    test('''
    GIVEN session and scale requests are successfull
    WHEN use case is called
    THEN it should return correct result
    ''', () async {
      when(sessionRepo.getScale(sessionId: _ID)).thenAnswer((_) => Future.value(_SCALE_DOMAIN_MODEL));
      when(sessionRepo.getSessionStream(any)).thenAnswer((_) => Stream.value(_SESSION_DOMAIN_MODEL));
      final stream = await useCase.getSessionStream(sessionId: _ID);

      expectLater(stream, emitsInOrder(<FullSessionDomainModel>[_FULL_SESSION_DOMAIN_MODEL]));
    });

    test('''
    GIVEN session request fails
    WHEN use case is called
    THEN it should return an error
    ''', () async {
      when(sessionRepo.getScale(sessionId: _ID)).thenAnswer((_) => Future.value(_SCALE_DOMAIN_MODEL));
      when(sessionRepo.getSessionStream(_ID)).thenThrow(_error);

      expectLater(() => useCase.getSessionStream(sessionId: _ID), throwsA(equals(_error)));
    });

    test('''
    GIVEN scale request fails
    WHEN use case is called
    THEN it should return an error
    ''', () async {
      when(sessionRepo.getSessionStream(any)).thenAnswer((_) => Stream.value(_SESSION_DOMAIN_MODEL));
      when(sessionRepo.getScale(sessionId: anyNamed('sessionId'))).thenAnswer((realInvocation) => Future.error(_error));

      expectLater(() => useCase.getSessionStream(sessionId: _ID), throwsA(equals(_error)));
    });
  });
}
