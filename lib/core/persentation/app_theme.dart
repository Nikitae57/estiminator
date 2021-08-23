import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const _BACKGROUND_COLOR = Color(0xFF0A0E21);
const _PRIMARY_COLOR = Color(0xFF1D1E33);
const _PRIMARY_COLOR_DARK = Color(0xFF101327);
const _INACTIVE_CARD_COLOR = Color(0xFF111328);
const _ACCENT_COLOR = Color(0xfffd2a4d);

class AppTheme {
  final theme = ThemeData.dark().copyWith(
    backgroundColor: _BACKGROUND_COLOR,
    scaffoldBackgroundColor: _BACKGROUND_COLOR,
    accentColor: _ACCENT_COLOR,
    primaryColor: _PRIMARY_COLOR,
    primaryColorDark: _PRIMARY_COLOR_DARK,
    cardColor: _INACTIVE_CARD_COLOR,
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline1: ThemeData.dark()
              .textTheme
              .headline1
              ?.copyWith(fontSize: 80, color: Colors.white, fontWeight: FontWeight.bold),
          headline2: ThemeData.dark().textTheme.headline2?.copyWith(fontSize: 50, color: Colors.white),
          headline3: ThemeData.dark().textTheme.headline3?.copyWith(fontSize: 30, fontWeight: FontWeight.w200),
          headline4: ThemeData.dark().textTheme.headline4?.copyWith(fontSize: 25, fontWeight: FontWeight.w200),
          headline5: ThemeData.dark().textTheme.headline5?.copyWith(fontSize: 20, fontWeight: FontWeight.w200),
          headline6: ThemeData.dark().textTheme.headline6?.copyWith(fontSize: 18, fontWeight: FontWeight.w200),
          bodyText1: ThemeData.dark().textTheme.bodyText1?.copyWith(fontSize: 17, fontWeight: FontWeight.w300),
        ),
  );

  final bigMargin = 32.0;

  final defaultMargin = 16.0;

  final smallMargin = 8.0;

  final fadeAnimationDuration = const Duration(milliseconds: 100);

  final defaultBorderRadius = 32.0;

  final bottomButtonHeight = 48.0;

  TextTheme get textTheme => theme.textTheme;
}
