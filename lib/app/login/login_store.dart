import 'package:estiminator/app/login/login_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_bundle_model.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  String _userName = '';

  @observable
  var _loginStateView = const LoginStateModel(
    appBarTitle: 'Login',
    title: 'Enter your name here 👇',
    hint: 'Your name',
    loginButtonText: 'LOGIN',
  );

  @computed
  LoginStateModel get loginStateView => _loginStateView;

  @observable
  var _shouldShowLoginButton = false;

  @computed
  bool get shouldShowLoginButton => _shouldShowLoginButton;

  @action
  void onLoginFieldChange(String text) {
    text = text.trim();
    _shouldShowLoginButton = text.isNotEmpty;
    _userName = text;
  }

  @action
  void onLoginButtonPressed() {
    Modular.to.pushNamed(
      SessionsOverviewPage.route,
      arguments: SessionsBundleModel(userName: _userName),
    );
  }
}
