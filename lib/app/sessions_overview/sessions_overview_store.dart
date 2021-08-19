import 'package:estiminator/app/core/view_state.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_error_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_overview_state_model_mapper.dart';
import 'package:estiminator/domain/core/error_model.dart';
import 'package:estiminator/domain/core/result_wrapper.dart';
import 'package:estiminator/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/domain/sessions_overview/get_sessions_overview_use_case.dart';
import 'package:estiminator/domain/sessions_overview/sessions_overview_domain_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:estiminator/app/core/error_state_model.dart';

part 'sessions_overview_store.g.dart';

class SessionsOverviewStore = _SessionOverviewStore with _$SessionsOverviewStore;

ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>> _mapSessionsOverviewStateModel(
  ResultWrapper<SessionsOverviewDomainModel, ErrorModel> result,
) {
  return result.when(result: (sessionsOverviewDomainModel) {
    return ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>>.data(
      sessionsOverviewStateModelMapper.map(sessionsOverviewDomainModel),
    );
  }, error: (error) {
    return ViewState<SessionsOverviewStateModel, ErrorStateModel<SessionsOverviewErrorStateModel>>.error(
      error: ErrorStateModel(
          stateModel: SessionsOverviewErrorStateModel(
            errorMessage: "Sorry, we're unable to get estimations sessions 😔. Try again later",
            retryButtonText: 'RETRY',
            retryButtonIcon: Icons.replay_rounded,
          ),
          errorModel: error),
    );
  });
}

abstract class _SessionOverviewStore with Store {
  _SessionOverviewStore(
    this._getSessionsOverviewUseCase,
    this._userCredentialsProvider,
  );

  final GetSessionsOverviewUseCase _getSessionsOverviewUseCase;
  final IUserCredentialsprovider _userCredentialsProvider;

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
    userNameFuture = ObservableFuture(_userCredentialsProvider.getUserCredentials().then((value) => value.userName));
  }
}
