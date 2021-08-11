import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../di.dart';
import '../app_theme.dart';
import 'login_store.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  static const route = '/';

  final _loginStore = getIt<LoginStore>();
  final _theme = getIt<AppTheme>();

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
