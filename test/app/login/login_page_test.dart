import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/login/login_page.dart';
import 'package:estiminator/app/login/login_state_model.dart';
import 'package:estiminator/app/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_page_test.mocks.dart';

const _APP_BAR_TITLE = 'App bar title';
const _TITLE = 'title';
const _HINT = 'hint';
const _LOGIN_BUTTON_TEXT = 'login button text';

const _TEST_INPUT = 'test input';

const _SHOULD_SHOW_LOGIN_BUTTON = true;

const _LOGIN_STATE_MODEL = LoginStateModel(
  appBarTitle: _APP_BAR_TITLE,
  title: _TITLE,
  hint: _HINT,
  loginButtonText: _LOGIN_BUTTON_TEXT,
);

Widget _getWidget(LoginStore store, AppTheme theme) => MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: LoginPage(store, theme),
      ),
    );

@GenerateMocks([LoginStore, AppTheme])
void main() {
  final store = MockLoginStore();
  final theme = MockAppTheme();

  setUp(() {
    when(store.loginStateView).thenReturn(_LOGIN_STATE_MODEL);
    when(store.shouldShowLoginButton).thenReturn(_SHOULD_SHOW_LOGIN_BUTTON);
    when(theme.bigMargin).thenReturn(32.0);
    when(theme.textTheme).thenReturn(const TextTheme());
    when(theme.fadeAnimationDuration).thenReturn(const Duration(seconds: 1));
  });
  group('LoginPage tests -', () {
    testWidgets('''
    GIVEN page in initial state
    WHEN page is created
    THEN it should display state model correctly
    ''', (tester) async {
      final page = _getWidget(store, theme);
      await tester.pumpWidget(page);

      expect(find.text(_APP_BAR_TITLE), findsOneWidget);
      expect(find.text(_TITLE), findsOneWidget);
      expect(find.text(_HINT), findsOneWidget);
      expect(find.text(_LOGIN_BUTTON_TEXT), findsOneWidget);
    });

    testWidgets('''
    GIVEN page in initial state
    WHEN text is typed in login field
    THEN store callback should be called
    ''', (tester) async {
      final page = _getWidget(store, theme);
      await tester.pumpWidget(page);

      await tester.enterText(find.byType(TextField), _TEST_INPUT);

      verify(store.onLoginFieldChange(_TEST_INPUT)).called(1);
    });

    testWidgets('''
    GIVEN page in initial state
    WHEN login button pressed
    THEN store callback should be called
    ''', (tester) async {
      final page = _getWidget(store, theme);
      await tester.pumpWidget(page);

      await tester.tap(find.text(_LOGIN_BUTTON_TEXT));

      verify(store.onLoginButtonPressed()).called(1);
    });
  });
}
