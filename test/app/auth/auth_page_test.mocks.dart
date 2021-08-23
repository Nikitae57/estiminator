// Mocks generated by Mockito 5.0.14 from annotations
// in estiminator/test/app/auth/auth_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:estiminator/auth/presentation/auth_state_model.dart' as _i2;
import 'package:estiminator/auth/presentation/auth_store.dart' as _i4;
import 'package:estiminator/core/persentation/app_theme.dart' as _i6;
import 'package:flutter/material.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeAuthStateModel_0 extends _i1.Fake implements _i2.AuthStateModel {}

class _FakeThemeData_1 extends _i1.Fake implements _i3.ThemeData {
  @override
  String toString({_i3.DiagnosticLevel? minLevel = _i3.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeDuration_2 extends _i1.Fake implements Duration {}

class _FakeTextTheme_3 extends _i1.Fake implements _i3.TextTheme {
  @override
  String toString({_i3.DiagnosticLevel? minLevel = _i3.DiagnosticLevel.info}) =>
      super.toString();
}

/// A class which mocks [AuthStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthStore extends _i1.Mock implements _i4.AuthStore {
  MockAuthStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthStateModel get loginStateView =>
      (super.noSuchMethod(Invocation.getter(#loginStateView),
          returnValue: _FakeAuthStateModel_0()) as _i2.AuthStateModel);
  @override
  bool get shouldShowLoginButton =>
      (super.noSuchMethod(Invocation.getter(#shouldShowLoginButton),
          returnValue: false) as bool);
  @override
  void onLoginFieldChange(String? text) =>
      super.noSuchMethod(Invocation.method(#onLoginFieldChange, [text]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<void> onLogin() =>
      (super.noSuchMethod(Invocation.method(#onLogin, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [AppTheme].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppTheme extends _i1.Mock implements _i6.AppTheme {
  MockAppTheme() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.ThemeData get theme => (super.noSuchMethod(Invocation.getter(#theme),
      returnValue: _FakeThemeData_1()) as _i3.ThemeData);
  @override
  double get bigMargin =>
      (super.noSuchMethod(Invocation.getter(#bigMargin), returnValue: 0.0)
          as double);
  @override
  double get defaultMargin =>
      (super.noSuchMethod(Invocation.getter(#defaultMargin), returnValue: 0.0)
          as double);
  @override
  double get smallMargin =>
      (super.noSuchMethod(Invocation.getter(#smallMargin), returnValue: 0.0)
          as double);
  @override
  Duration get fadeAnimationDuration =>
      (super.noSuchMethod(Invocation.getter(#fadeAnimationDuration),
          returnValue: _FakeDuration_2()) as Duration);
  @override
  double get defaultBorderRadius =>
      (super.noSuchMethod(Invocation.getter(#defaultBorderRadius),
          returnValue: 0.0) as double);
  @override
  double get bottomButtonHeight =>
      (super.noSuchMethod(Invocation.getter(#bottomButtonHeight),
          returnValue: 0.0) as double);
  @override
  _i3.TextTheme get textTheme =>
      (super.noSuchMethod(Invocation.getter(#textTheme),
          returnValue: _FakeTextTheme_3()) as _i3.TextTheme);
  @override
  String toString() => super.toString();
}
