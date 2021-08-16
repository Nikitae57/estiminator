import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

abstract class BasePageS {
  String get appBarTitle;
}

abstract class LoginS implements BasePageS {
  factory LoginS({
    required String appBarTitle,
    required String title,
    required Input<String> login,
    required String loginButtonText,
    required bool shouldShowLoginButton,
  }) = _LoginMX;

  String get title;
  Input<String> get login;
  String get loginButtonText;
  bool get shouldShowLoginButton;

  void onLoginButtonTap();
}

abstract class Input<T> {
  String get hint;
  T get text;
  String get errorMessage;

  void validate();
}

class _LoginMX implements LoginS {
  _LoginMX({
    required this.appBarTitle,
    required this.title,
    required this.login,
    required this.loginButtonText,
    required this.shouldShowLoginButton,
  });

  @override
  String appBarTitle;

  @observable
  String title;

  @observable
  Input<String> login;

  @observable
  String loginButtonText;

  @observable
  bool shouldShowLoginButton;

  void onLoginButtonTap() {}
}

class FooBarCard extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget? button;

  const FooBarCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultTextStyle(
          style: TextStyle(color: Colors.black),
          child: title,
        ),
      ],
    );
  }
}

void qwe() {
  // FooBarCard(title: Text(style: TextStyle(color: Colors.black, fontFamily: '')))
}
