import 'package:estiminator/core/domain/credentials/user_credentials_domain_model.dart';

abstract class IUserCredentialsProvider {
  Future<UserCredentialsDomainModel> getUserCredentials();
  Future<void> setUid(String uId);
}
