import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';
import 'package:estiminator/create_session/domain/models/create_session_task_domain_model.dart';
import 'package:estiminator/create_session/domain/service/create_session_service.dart';
import 'package:estiminator/create_session/domain/use_case/create_session_use_case.dart';
import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'create_session_use_case_test.mocks.dart';

final _error = Exception();

const _CREATOR_UID = 'uid';
const _SESSION_TITLE = 'title';
const _SCALE_NAME = 'name';
const tasks = <CreateSessionTaskDomainModel>[];
const _CREATE_SESSION_DOMAIN_MODEL = CreateSessionDomainModel(
  creatorUid: _CREATOR_UID,
  sessionTitle: _SESSION_TITLE,
  scaleName: _SCALE_NAME,
  tasks: tasks,
);

@GenerateMocks([ICreateSessionService])
void main() {
  final createSessionService = MockICreateSessionService();
  group('CreateSessionUseCase tests -', () {
    test('''
    GIVEN service fails
    WHEN use case is called
    THEN use case should fail
    ''', () async {
      when(createSessionService.createSession(_CREATE_SESSION_DOMAIN_MODEL)).thenAnswer((_) => Future.error(_error));
      final useCase = CreateSessionUseCase(createSessionService);

      await expectLater(() => useCase.createSession(_CREATE_SESSION_DOMAIN_MODEL), throwsA(equals(_error)));
    });

    test('''
    GIVEN service makes successfull request
    WHEN use case is called
    THEN use case should return successfull result
    ''', () async {
      when(createSessionService.createSession(_CREATE_SESSION_DOMAIN_MODEL)).thenAnswer((_) => Future(() {}));
      final useCase = CreateSessionUseCase(createSessionService);

      await expectLater(() => useCase.createSession(_CREATE_SESSION_DOMAIN_MODEL), returnsNormally);
    });
  });
}
