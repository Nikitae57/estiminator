import 'package:estiminator/app/core/view_state.dart';
import 'package:estiminator/app/sessions/models/sessions_overview_state_model.dart';
import 'package:estiminator/app/sessions/models/sessions_overview_state_model_mapper.dart';
import 'package:estiminator/app/sessions/models/sessions_state_model.dart';
import 'package:estiminator/domain/sessions/get_sessions_overview_use_case.dart';
import 'package:estiminator/domain/sessions/sessions_overview_domain_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'sessions_store.g.dart';

@injectable
class SessionsStore = _SessionsStore with _$SessionsStore;

SessionsOverviewStateModel _mapSessionsOverviewStateModel(
    SessionsOverviewDomainModel domainModel) {
  return sessionsOverviewStateModelMapper.map(domainModel);
}

abstract class _SessionsStore with Store {
  _SessionsStore(this._getSessionsOverviewUseCase);

  final GetSessionsOverviewUseCase _getSessionsOverviewUseCase;

  @observable
  SessionsStateModel _sessionsPageStateModel =
      SessionsStateModel(appBarTitle: '', username: '');

  @computed
  SessionsStateModel get sessionsPageStateModel => _sessionsPageStateModel;

  @observable
  ViewState<SessionsOverviewStateModel, Exception> _sessionsOverviewViewState =
      ViewState<SessionsOverviewStateModel, Exception>.lodaing();

  @computed
  ViewState<SessionsOverviewStateModel, Exception>
      get sessionsOverviewViewState => _sessionsOverviewViewState;

  @action
  void setUsername(final String username) {
    _sessionsPageStateModel = _getSessionStateModel(username: username);
  }

  @action
  Future<void> loadSessions() async {
    final sessionsOverviewDomainModel =
        await _getSessionsOverviewUseCase.getSessionsOverview();
    final sessionsOverviewStateModel =
        await compute<SessionsOverviewDomainModel, SessionsOverviewStateModel>(
      _mapSessionsOverviewStateModel,
      sessionsOverviewDomainModel,
    );

    _sessionsOverviewViewState = ViewState.data(sessionsOverviewStateModel);
  }

  SessionsStateModel _getSessionStateModel({String? username}) =>
      SessionsStateModel(
        appBarTitle: 'Pick a session',
        username: username ?? '',
      );
}
