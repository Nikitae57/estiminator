import 'package:estiminator/domain/credentials/user_credentials_domain_model.dart';

abstract class IUserCredentialsprovider {
  Future<UserCredentialsDomainModel> getUserCredentials();
}
