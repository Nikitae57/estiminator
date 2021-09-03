import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/session/domain/get_session_use_case.dart';
import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
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
  });

  final IUserCredentialsProvider credentialsProvider;
  final GetSessionUseCase getSessionUseCase;
  final ResetTaskEstimationsUseCase resetTaskEstimationsUseCase;

  @override
  final SessionStateModel sessionStateModel;

  @computed
  @override
  Future<Stream<FullSessionDomainModel>> get sessionStream async {
    final stream = await getSessionUseCase.getSessionStream(sessionId: sessionStateModel.sessionId);
    return stream.map((sessionDomainModel) {
      if (sessionDomainModel.session.currentTaskIndex != null) {
        openedTaskIndex = sessionDomainModel.session.currentTaskIndex;
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
}
