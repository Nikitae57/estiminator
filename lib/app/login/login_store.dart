import 'package:estiminator/app/login/login_state_view.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

@injectable
class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  var _loginStateView = LoginStateView(
      appBarTitle: 'Login',
      title: 'Enter your name here 👇',
      hint: 'Your name',
      loginButtonText: 'LOGIN');

  @computed
  LoginStateView get loginStateView => _loginStateView;

  @observable
  var _shouldShowLoginButton = false;

  @computed
  bool get shouldShowLoginButton => _shouldShowLoginButton;

  @action
  void onLoginFieldChange(final String text) =>
      _shouldShowLoginButton = text.trim().isNotEmpty;
}
