import 'package:estiminator/core/data/local_user_credentials_provider.dart';
import 'package:estiminator/core/domain/credentials/user_credentials_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';

const _EMPTY_USER_CREDENTIALS = UserCredentialsDomainModel(uId: '');
const _UID = 'uid';
const _USER_CREDENTIALS = UserCredentialsDomainModel(uId: _UID);

void main() {
  group('LocalUserCredentialsProvider tests -', () {
    test('''
    GIVEN provider is in initial state
    WHEN getting credentials
    THEN should return empty model
    ''', () async {
      final provider = LocalUserCredentialsProvider();

      final credentials = await provider.getUserCredentials();

      expect(credentials, _EMPTY_USER_CREDENTIALS);
    });

    test('''
    GIVEN user UID is set
    WHEN getting credentials
    THEN should return correct model
    ''', () async {
      final provider = LocalUserCredentialsProvider();
      provider.setUid(_UID);

      final credentials = await provider.getUserCredentials();

      expect(credentials, _USER_CREDENTIALS);
    });
  });
}
