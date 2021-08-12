// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  Computed<LoginStateModel>? _$loginStateViewComputed;

  @override
  LoginStateModel get loginStateView => (_$loginStateViewComputed ??=
          Computed<LoginStateModel>(() => super.loginStateView,
              name: '_LoginStore.loginStateView'))
      .value;
  Computed<bool>? _$shouldShowLoginButtonComputed;

  @override
  bool get shouldShowLoginButton => (_$shouldShowLoginButtonComputed ??=
          Computed<bool>(() => super.shouldShowLoginButton,
              name: '_LoginStore.shouldShowLoginButton'))
      .value;

  final _$_loginStateViewAtom = Atom(name: '_LoginStore._loginStateView');

  @override
  LoginStateModel get _loginStateView {
    _$_loginStateViewAtom.reportRead();
    return super._loginStateView;
  }

  @override
  set _loginStateView(LoginStateModel value) {
    _$_loginStateViewAtom.reportWrite(value, super._loginStateView, () {
      super._loginStateView = value;
    });
  }

  final _$_shouldShowLoginButtonAtom =
      Atom(name: '_LoginStore._shouldShowLoginButton');

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

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void onLoginFieldChange(String text) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.onLoginFieldChange');
    try {
      return super.onLoginFieldChange(text);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onLoginButtonPressed() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.onLoginButtonPressed');
    try {
      return super.onLoginButtonPressed();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
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
