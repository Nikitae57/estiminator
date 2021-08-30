import 'package:estiminator/core/domain/credentials/user_credentials_domain_model.dart';
import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/create_session/domain/use_case/create_session_use_case.dart';
import 'package:estiminator/create_session/domain/use_case/get_estimation_scales_use_case.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scale_state_model.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scales_state_model.dart';
import 'package:estiminator/create_session/presentation/model/scales_state_model_mapper.dart';
import 'package:estiminator/create_session/presentation/model/task_state_model.dart';
import 'package:estiminator/create_session/presentation/store/mx_create_session.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'mx_create_session_test.mocks.dart';

const _VALUES = ['1', '2', '3'];
const _VALUES_1 = ['4', '5', '6'];
const _VALUES_2 = ['7', '8', '9'];

const _TITLE = 'title';
const _FIBONACCI = 'fib';
const _SIMPLE = 'simple';

const _ESTIMATION_SCALES_DOMAIN_MODEL = EstimationScalesDomainModel(scales: [
  EstimationScaleDomainModel(name: _FIBONACCI, values: _VALUES),
  EstimationScaleDomainModel(name: _FIBONACCI, values: _VALUES_1),
  EstimationScaleDomainModel(name: _SIMPLE, values: _VALUES_2),
]);

const _ESTIMATION_SCALES_STATE_MODEL = EstimationScalesStateModel(
  title: _TITLE,
  iconData: FontAwesomeIcons.sortAmountDown,
  scales: [
    EstimationScaleStateModel(
      name: _FIBONACCI,
      values: _VALUES,
      iconData: FontAwesomeIcons.signal,
    ),
    EstimationScaleStateModel(
      name: _FIBONACCI,
      values: _VALUES_1,
      iconData: FontAwesomeIcons.signal,
    ),
    EstimationScaleStateModel(name: _SIMPLE, values: _VALUES_2, iconData: FontAwesomeIcons.thLarge),
  ],
);

const _UID = 'uid';
const _USER_CREDENTIALS_DOMAIN_MODEL = UserCredentialsDomainModel(uId: _UID);

final _error = Exception();

const _SESSION_TITLE = 'session title';
const _TASK_TITLE = 'task title';
const _TASK_DESCRIPTION = 'task description';
const _JIRA_LINK = 'jira link';

@GenerateMocks([
  EstimationScalesStateModelMapper,
  CreateSessionUseCase,
  GetEstimationScalesUseCase,
  IUserCredentialsProvider,
])
void main() {
  final scalesStateModelMapper = MockEstimationScalesStateModelMapper();
  final createSessionUseCase = MockCreateSessionUseCase();
  final getScalesUseCase = MockGetEstimationScalesUseCase();
  final credentialsProvider = MockIUserCredentialsProvider();

  setUp(() {
    when(scalesStateModelMapper.map(any)).thenReturn(_ESTIMATION_SCALES_STATE_MODEL);
    when(getScalesUseCase.getScales()).thenAnswer((_) => Future.value(_ESTIMATION_SCALES_DOMAIN_MODEL));
    when(createSessionUseCase.createSession(any)).thenAnswer((_) async {});
    when(credentialsProvider.getUserCredentials()).thenAnswer((_) => Future.value(_USER_CREDENTIALS_DOMAIN_MODEL));
  });

  group('CreateSessionMx tests -', () {
    test('''
    GIVEN get scales use case returns successfully
    WHEN loading scales
    THEN store should return successfull future and 
      scale state model should be set to first received scale
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      await store.loadScales();

      expect(store.scale.value, equals(_ESTIMATION_SCALES_STATE_MODEL.scales[0]));
    });

    test('''
    GIVEN get scales use case fails
    WHEN loading scales
    THEN store should return future with error
    ''', () async {
      when(getScalesUseCase.getScales()).thenAnswer((_) => Future.error(_error));
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      store.loadScales();

      expect(store.estimationScalesFuture, throwsA(equals(_error)));
    });

    test('''
    GIVEN get scales use case returns sucessfully
    WHEN changing scale
    THEN chosen scale should update
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      await store.loadScales();
      final newScaleName = _ESTIMATION_SCALES_STATE_MODEL.scales[1].name;
      await store.onScaleChange(newScaleName);

      expect(store.scale.value!.name, equals(newScaleName));
    });

    test('''
    GIVEN store without task title
    WHEN adding task
    THEN it should return null
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      final taskStateModel = await store.onAddTask();

      expect(taskStateModel, isNull);
    });

    test('''
    GIVEN store with task title, description and jira link
    WHEN adding task
    THEN it should return task model
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      store.taskTitle.set(_TASK_TITLE);
      store.taskDescription.set(_TASK_DESCRIPTION);
      store.taskJiraLink.set(_JIRA_LINK);
      final taskStateModel = await store.onAddTask();

      expect(
        taskStateModel,
        const TaskStateModel(
          title: _TASK_TITLE,
          description: _TASK_DESCRIPTION,
          jiraLink: _JIRA_LINK,
        ),
      );
    });

    test('''
    GIVEN store without session title
    WHEN creating session
    THEN session title should be marked as invalid and session shouldn't be created
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      await store.createSession();

      expect(store.sessionTitle.isValid, isFalse);
      expect(store.createSessionFuture, isNull);
      verifyNever(createSessionUseCase.createSession(any));
      verifyNever(credentialsProvider.getUserCredentials());
    });

    test('''
    GIVEN store with session title and without tasks
    WHEN creating session
    THEN session shouldn't be created
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      store.sessionTitle.set(_SESSION_TITLE);
      await store.createSession();

      expect(store.sessionTitle.isValid, isTrue);
      expect(store.createSessionFuture, isNull);
      expect(store.createdSession, isFalse);
      verifyNever(createSessionUseCase.createSession(any));
      verifyNever(credentialsProvider.getUserCredentials());
    });

    test('''
    GIVEN store with session title and with tasks
    WHEN creating session
    THEN session should be created
    ''', () async {
      final store = CreateSessionMx(
        getScalesUseCase,
        createSessionUseCase,
        credentialsProvider,
        scalesStateModelMapper,
      );

      await store.loadScales();
      store.sessionTitle.set(_SESSION_TITLE);
      store.taskTitle.set(_TASK_TITLE);
      store.onAddTask();
      await store.createSession();

      expect(store.sessionTitle.isValid, isTrue);
      expect(store.createSessionFuture, isNotNull);
      expect(store.createdSession, isTrue);
      verify(createSessionUseCase.createSession(any)).called(1);
      verify(credentialsProvider.getUserCredentials()).called(1);
    });
  });
}
