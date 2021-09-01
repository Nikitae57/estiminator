import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/sessions_overview/presentation/models/session_state_model.dart';

abstract class ISessionStore {
  SessionStateModel get sessionStateModel;
  Stream<SessionDomainModel> get sessionStream;
  int get openedTask;
  void taskChosen(int index);
  bool isHost();
}
