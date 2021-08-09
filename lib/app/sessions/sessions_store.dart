import 'package:estiminator/app/core/view_state.dart';
import 'package:estiminator/app/sessions/models/sessions_state_model.dart';
import 'package:mobx/mobx.dart';

part 'sessions_store.g.dart';

class SessionsStore = _SessionsStore with _$SessionsStore;

abstract class _SessionsStore with Store {
  _SessionsStore() {
    _sessionsStateModel = _getSessionStateModel(username: null);
  }

  @observable
  late SessionsStateModel _sessionsStateModel;

  @observable
  ViewState<SessionsStateModel, Exception> _sessionsViewState =
      ViewState<SessionsStateModel, Exception>.lodaing();

  @computed
  SessionsStateModel get sessionsStateModel => _sessionsStateModel;

  @action
  void setUsername(final String username) {
    _sessionsStateModel = _getSessionStateModel(username: username);
  }

  SessionsStateModel _getSessionStateModel({String? username}) =>
      SessionsStateModel(
        appBarTitle: 'Pick a session',
        greeting: username == null ? '' : 'Hello, $username',
      );
}
