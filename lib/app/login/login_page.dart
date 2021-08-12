import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(
    LoginStore loginStore,
    AppTheme appTheme, {
    Key? key,
  })  : _loginStore = loginStore,
        _theme = appTheme,
        super(key: key);

  static const route = '/';

  final LoginStore _loginStore;
  final AppTheme _theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _appBarObserver),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: _theme.bigMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _titleObserver,
              SizedBox(height: _theme.bigMargin),
              _loginInputObserver,
              SizedBox(height: _theme.bigMargin),
              _loginButtonObserver
            ],
          ),
        ),
      ),
    );
  }

  Observer get _appBarObserver => Observer(
        builder: (context) => Text(
          _loginStore.loginStateView.appBarTitle,
          style: _theme.textTheme.headline4,
        ),
      );

  Observer get _titleObserver => Observer(
        builder: (context) => Text(
          _loginStore.loginStateView.title,
          style: _theme.textTheme.headline3,
        ),
      );

  Observer get _loginInputObserver => Observer(
        builder: (context) => TextField(
          decoration: InputDecoration(
            hintText: _loginStore.loginStateView.hint,
          ),
          onChanged: (text) => _loginStore.onLoginFieldChange(text),
        ),
      );

  Observer get _loginButtonObserver => Observer(
        builder: (context) => AnimatedOpacity(
          duration: _theme.fadeAnimationDuration,
          opacity: _loginStore.shouldShowLoginButton ? 1.0 : 0.0,
          child: ElevatedButton(
            child: Text(_loginStore.loginStateView.loginButtonText),
            onPressed: _loginStore.onLoginButtonPressed,
          ),
        ),
      );
}
