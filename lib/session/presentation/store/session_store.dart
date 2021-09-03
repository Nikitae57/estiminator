import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/sessions_overview/presentation/models/session_state_model.dart';

abstract class ISessionStore {
  SessionStateModel get sessionStateModel;
  Future<Stream<FullSessionDomainModel>> get sessionStream;
  int? get openedTaskIndex;
  void openTask(int index);
  Future<bool> isHost();
  Future<void> resetEstimations();
}
