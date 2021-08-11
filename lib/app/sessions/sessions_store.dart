import 'dart:math';

import 'package:estiminator/app/core/view_state.dart';
import 'package:estiminator/app/sessions/models/session_overview_state_model.dart';
import 'package:estiminator/app/sessions/models/sessions_overview_state_model.dart';
import 'package:estiminator/app/sessions/models/sessions_overview_state_model_mapper.dart';
import 'package:estiminator/app/sessions/models/sessions_state_model.dart';
import 'package:estiminator/domain/core/error_model.dart';
import 'package:estiminator/domain/core/result_wrapper.dart';
import 'package:estiminator/domain/sessions/use_case/get_sessions_overview_use_case.dart';
import 'package:estiminator/domain/sessions/sessions_overview_domain_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'sessions_store.g.dart';

@injectable
class SessionsStore = _SessionsStore with _$SessionsStore;

ViewState<SessionsOverviewStateModel, ErrorModel>
    _mapSessionsOverviewStateModel(
  ResultWrapper<SessionsOverviewDomainModel, ErrorModel> result,
) {
  return result.when(
    result: (sessionsOverviewDomainModel) =>
        ViewState<SessionsOverviewStateModel, ErrorModel>.data(
            sessionsOverviewStateModelMapper.map(sessionsOverviewDomainModel)),
    error: (error) =>
        ViewState<SessionsOverviewStateModel, ErrorModel>.error(error: error),
  );
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
  ViewState<SessionsOverviewStateModel, ErrorModel> _sessionsOverviewViewState =
      ViewState<SessionsOverviewStateModel, ErrorModel>.lodaing();

  @computed
  ViewState<SessionsOverviewStateModel, ErrorModel>
      get sessionsOverviewViewState => _sessionsOverviewViewState;

  @action
  void setUsername(final String username) {
    _sessionsPageStateModel = _getSessionStateModel(username: username);
  }

  @action
  Future<void> loadSessions() async {
    final sessionsRequestResult =
        await _getSessionsOverviewUseCase.getSessionsOverview();

    _sessionsOverviewViewState = await compute<
        ResultWrapper<SessionsOverviewDomainModel, ErrorModel>,
        ViewState<SessionsOverviewStateModel, ErrorModel>>(
      _mapSessionsOverviewStateModel,
      sessionsRequestResult,
    );
  }

  SessionsStateModel _getSessionStateModel({String? username}) =>
      SessionsStateModel(
        appBarTitle: 'Pick a session',
        username: username ?? '',
      );
}
