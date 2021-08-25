import 'package:estiminator/auth/presentation/auth_store.dart';
import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'auth_store_test.mocks.dart';

const _USERNAME = 'username';

@GenerateMocks([IUserCredentialsProvider, IModularNavigator])
void main() {
  final navigatorDelegate = MockIModularNavigator();
  final credentialsProvider = MockIUserCredentialsProvider();
  final store = AuthStore(credentialsProvider);

  setUp(() {
    Modular.navigatorDelegate = navigatorDelegate;
    when(navigatorDelegate.pushNamed(any)).thenAnswer((_) async {});
  });

  group('AuthStore tests -', () {
    test('''
    GIVEN username is empty
    WHEN login button visibility is observed
    THEN it should be hidden
    ''', () {
      store.onLoginFieldChange('');

      expect(store.shouldShowLoginButton, false);
    });

    test('''
    GIVEN username is NOT empty
    WHEN login button visibility is observed
    THEN it should be shown
    ''', () {
      store.onLoginFieldChange(_USERNAME);

      expect(store.shouldShowLoginButton, true);
    });

    test('''
    GIVEN username is NOT empty
    WHEN login callback is called
    THEN should call credentials provider and navigator
    ''', () async {
      store.onLoginFieldChange(_USERNAME);

      await store.onLogin();

      verify(credentialsProvider.setUid(_USERNAME)).called(1);
      verify(navigatorDelegate.pushNamed(any)).called(1);
    });

    test('''
    GIVEN username is empty
    WHEN login callback is called
    THEN should NOT call credentials provider
    ''', () {
      store.onLoginFieldChange('');

      store.onLogin();

      verifyNever(credentialsProvider.setUid(any));
    });
  });
}
