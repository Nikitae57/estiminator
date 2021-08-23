import 'package:estiminator/app/auth/auth_state_model.dart';
import 'package:estiminator/app/sessions_overview/models/sessions_bundle_model.dart';
import 'package:estiminator/app/sessions_overview/sessions_overview_page.dart';
import 'package:estiminator/domain/credentials/user_credentials_provider.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  _AuthStore(this._credentialsProvider);

  String _userName = '';
  IUserCredentialsprovider _credentialsProvider;

  @observable
  var _loginStateView = const AuthStateModel(
    appBarTitle: 'Login',
    title: 'Enter your name here 👇',
    hint: 'Your name',
    loginButtonText: 'LOGIN',
  );

  @computed
  AuthStateModel get loginStateView => _loginStateView;

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
  Future<void> onLogin() async {
    // I decided to not mess with propper auth so I use username as uId
    await _credentialsProvider.setUid(_userName);

    Modular.to.pushNamed(
      SessionsOverviewPage.route,
      arguments: SessionsBundleModel(userName: _userName),
    );
  }
}
