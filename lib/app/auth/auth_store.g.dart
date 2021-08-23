// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStore, Store {
  Computed<AuthStateModel>? _$loginStateViewComputed;

  @override
  AuthStateModel get loginStateView => (_$loginStateViewComputed ??=
          Computed<AuthStateModel>(() => super.loginStateView,
              name: '_AuthStore.loginStateView'))
      .value;
  Computed<bool>? _$shouldShowLoginButtonComputed;

  @override
  bool get shouldShowLoginButton => (_$shouldShowLoginButtonComputed ??=
          Computed<bool>(() => super.shouldShowLoginButton,
              name: '_AuthStore.shouldShowLoginButton'))
      .value;

  final _$_loginStateViewAtom = Atom(name: '_AuthStore._loginStateView');

  @override
  AuthStateModel get _loginStateView {
    _$_loginStateViewAtom.reportRead();
    return super._loginStateView;
  }

  @override
  set _loginStateView(AuthStateModel value) {
    _$_loginStateViewAtom.reportWrite(value, super._loginStateView, () {
      super._loginStateView = value;
    });
  }

  final _$_shouldShowLoginButtonAtom =
      Atom(name: '_AuthStore._shouldShowLoginButton');

  @override
  bool get _shouldShowLoginButton {
    _$_shouldShowLoginButtonAtom.reportRead();
    return super._shouldShowLoginButton;
  }

  @override
  set _shouldShowLoginButton(bool value) {
    _$_shouldShowLoginButtonAtom
        .reportWrite(value, super._shouldShowLoginButton, () {
      super._shouldShowLoginButton = value;
    });
  }

  final _$onLoginAsyncAction = AsyncAction('_AuthStore.onLogin');

  @override
  Future<void> onLogin() {
    return _$onLoginAsyncAction.run(() => super.onLogin());
  }

  final _$_AuthStoreActionController = ActionController(name: '_AuthStore');

  @override
  void onLoginFieldChange(String text) {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
        name: '_AuthStore.onLoginFieldChange');
    try {
      return super.onLoginFieldChange(text);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loginStateView: ${loginStateView},
shouldShowLoginButton: ${shouldShowLoginButton}
    ''';
  }
}
