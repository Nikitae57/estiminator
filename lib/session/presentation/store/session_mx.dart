import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/session/domain/get_session_use_case.dart';
import 'package:estiminator/session/domain/model/flip_cards_use_case.dart';
import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/session/domain/pick_estimation_use_case.dart';
import 'package:estiminator/session/domain/reset_task_estimations_use_case.dart';
import 'package:estiminator/session/presentation/store/session_store.dart';
import 'package:estiminator/sessions_overview/presentation/models/session_state_model.dart';
import 'package:mobx/mobx.dart';

part 'session_mx.g.dart';

class SessionMx = _SessionMx with _$SessionMx;

abstract class _SessionMx with Store implements ISessionStore {
  _SessionMx({
    required this.sessionStateModel,
    required this.credentialsProvider,
    required this.getSessionUseCase,
    required this.resetTaskEstimationsUseCase,
    required this.pickEstimationUseCase,
    required this.flipCardsUseCase,
  });

  final IUserCredentialsProvider credentialsProvider;
  final GetSessionUseCase getSessionUseCase;
  final ResetTaskEstimationsUseCase resetTaskEstimationsUseCase;
  final PickEstimationUseCase pickEstimationUseCase;
  final FlipCardsUseCase flipCardsUseCase;

  @override
  final SessionStateModel sessionStateModel;

  @computed
  @override
  Future<Stream<FullSessionDomainModel>> get sessionStream async {
    final stream = await getSessionUseCase.getSessionStream(sessionId: sessionStateModel.sessionId);
    final userCredentials = await credentialsProvider.getUserCredentials();

    return stream.map((sessionDomainModel) {
      isSessionFinished = sessionDomainModel.session.isFinished;

      if (sessionDomainModel.session.currentTaskIndex != null) {
        openedTaskIndex = sessionDomainModel.session.currentTaskIndex;
        areThereEstimationsForCurrentTask = sessionDomainModel.session.tasks[openedTaskIndex!].estimations.isNotEmpty;
        areCardsFlipped = sessionDomainModel.session.tasks[openedTaskIndex!].areCardsFlipped;
        hadUserEstimatedCurrentTask = sessionDomainModel.session.tasks[openedTaskIndex!].estimations
            .any((estimation) => estimation.creatorUid == userCredentials.uId);
      }
      return sessionDomainModel;
    });
  }

  @observable
  @override
  int? openedTaskIndex = 0;

  @action
  @override
  void openTask(int index) {
    openedTaskIndex = index;
  }

  @override
  Future<bool> isHost() async {
    final creds = await credentialsProvider.getUserCredentials();
    return creds.uId == sessionStateModel.creatorName;
  }

  @override
  @action
  Future<void> resetEstimations() async {
    if (openedTaskIndex != null) {
      return resetTaskEstimationsUseCase.resetTaskEstimations(
        sessionId: sessionStateModel.sessionId,
        taskIndex: openedTaskIndex!,
      );
    }
  }

  @override
  @observable
  bool areCardsFlipped = false;

  @override
  @action
  Future<void> pickEstimation(String estimation) async {
    if (openedTaskIndex != null) {
      if (await isHost()) {
        return pickEstimationUseCase.pickFinalEstimation(
          sessionId: sessionStateModel.sessionId,
          taskIndex: openedTaskIndex!,
          estimation: estimation,
        );
      } else {
        return pickEstimationUseCase.pickEstimation(
          sessionId: sessionStateModel.sessionId,
          taskIndex: openedTaskIndex!,
          estimation: estimation,
        );
      }
    }
  }

  @override
  @action
  Future<void> flipTheCards() async {
    if (openedTaskIndex != null && await isHost()) {
      return flipCardsUseCase.flipCards(sessionStateModel.sessionId, openedTaskIndex!);
    }
  }

  @override
  @observable
  bool hadUserEstimatedCurrentTask = false;

  @override
  @observable
  bool areThereEstimationsForCurrentTask = false;

  @override
  @observable
  bool isSessionFinished = false;
}
