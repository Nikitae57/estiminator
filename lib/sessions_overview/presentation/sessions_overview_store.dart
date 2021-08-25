import 'package:estiminator/core/persentation/view_state.dart';
import 'package:estiminator/sessions_overview/presentation/models/sessions_overview_error_state_model.dart';
import 'package:estiminator/sessions_overview/presentation/models/sessions_overview_state_model.dart';
import 'package:estiminator/sessions_overview/presentation/models/sessions_overview_state_model_mapper.dart';
import 'package:estiminator/core/domain/error_model.dart';
import 'package:estiminator/core/domain/result_wrapper.dart';
import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/sessions_overview/domain/get_sessions_overview_use_case.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:estiminator/core/persentation/error_state_model.dart';

part 'sessions_overview_store.g.dart';

class SessionsOverviewStore = _SessionOverviewStore with _$SessionsOverviewStore;

ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>> _mapSessionsOverviewStateModel(
  ResultWrapper<SessionsOverviewDomainModel, ErrorModel> result,
) {
  return result.when(
    result: (sessionsOverviewDomainModel) =>
        ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>>.data(
      sessionsOverviewStateModelMapper.map(sessionsOverviewDomainModel),
    ),
    error: (error) => ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>>.error(
      error: ErrorStateModel(
        stateModel: SessionsOverviewErrorStateModel(
          errorMessage: "Sorry, we're unable to get estimations sessions 😔. Try again later",
          retryButtonText: 'RETRY',
          retryButtonIcon: Icons.replay_rounded,
        ),
        errorModel: error,
      ),
    ),
  );
}

abstract class _SessionOverviewStore with Store {
  _SessionOverviewStore(
    this._getSessionsOverviewUseCase,
    this._userCredentialsProvider,
  );

  final GetSessionsOverviewUseCase _getSessionsOverviewUseCase;
  final IUserCredentialsProvider _userCredentialsProvider;

  @observable
  ObservableFuture<String>? userNameFuture;

  @observable
  ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>> _sessionsOverviewViewState =
      ViewState.lodaing();

  @computed
  ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>>
      get sessionsOverviewViewState => _sessionsOverviewViewState;

  @action
  Future<void> loadSessions() async {
    _sessionsOverviewViewState = ViewState.lodaing();
    final sessionsRequestResult = await _getSessionsOverviewUseCase.getSessionsOverview();

    _sessionsOverviewViewState = await compute<ResultWrapper<SessionsOverviewDomainModel, ErrorModel>,
        ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>>>(
      _mapSessionsOverviewStateModel,
      sessionsRequestResult,
    );
  }

  @action
  void loadUsername() {
    userNameFuture = ObservableFuture(_userCredentialsProvider.getUserCredentials().then((value) => value.uId));
  }
}
