// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_overview_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SessionsOverviewStore on _SessionOverviewStore, Store {
  Computed<
          ViewState<SessionsOverviewStateModel,
              ErrorStateModel<SessionsOverviewErrorStateModel>>>?
      _$sessionsOverviewViewStateComputed;

  @override
  ViewState<SessionsOverviewStateModel,
          ErrorStateModel<SessionsOverviewErrorStateModel>>
      get sessionsOverviewViewState =>
          (_$sessionsOverviewViewStateComputed ??= Computed<
                      ViewState<SessionsOverviewStateModel,
                          ErrorStateModel<SessionsOverviewErrorStateModel>>>(
                  () => super.sessionsOverviewViewState,
                  name: '_SessionOverviewStore.sessionsOverviewViewState'))
              .value;

  final _$userNameFutureAtom =
      Atom(name: '_SessionOverviewStore.userNameFuture');

  @override
  ObservableFuture<String>? get userNameFuture {
    _$userNameFutureAtom.reportRead();
    return super.userNameFuture;
  }

  @override
  set userNameFuture(ObservableFuture<String>? value) {
    _$userNameFutureAtom.reportWrite(value, super.userNameFuture, () {
      super.userNameFuture = value;
    });
  }

  final _$_sessionsOverviewViewStateAtom =
      Atom(name: '_SessionOverviewStore._sessionsOverviewViewState');

  @override
  ViewState<SessionsOverviewStateModel,
          ErrorStateModel<SessionsOverviewErrorStateModel>>
      get _sessionsOverviewViewState {
    _$_sessionsOverviewViewStateAtom.reportRead();
    return super._sessionsOverviewViewState;
  }

  @override
  set _sessionsOverviewViewState(
      ViewState<SessionsOverviewStateModel,
              ErrorStateModel<SessionsOverviewErrorStateModel>>
          value) {
    _$_sessionsOverviewViewStateAtom
        .reportWrite(value, super._sessionsOverviewViewState, () {
      super._sessionsOverviewViewState = value;
    });
  }

  final _$loadSessionsAsyncAction =
      AsyncAction('_SessionOverviewStore.loadSessions');

  @override
  Future<void> loadSessions() {
    return _$loadSessionsAsyncAction.run(() => super.loadSessions());
  }

  final _$_SessionOverviewStoreActionController =
      ActionController(name: '_SessionOverviewStore');

  @override
  void loadUsername() {
    final _$actionInfo = _$_SessionOverviewStoreActionController.startAction(
        name: '_SessionOverviewStore.loadUsername');
    try {
      return super.loadUsername();
    } finally {
      _$_SessionOverviewStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userNameFuture: ${userNameFuture},
sessionsOverviewViewState: ${sessionsOverviewViewState}
    ''';
  }
}
