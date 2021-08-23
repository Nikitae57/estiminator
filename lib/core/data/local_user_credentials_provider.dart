import 'package:estiminator/core/domain/credentials/user_credentials_domain_model.dart';
import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IUserCredentialsprovider)
class LocalUserCredentialsProvider implements IUserCredentialsprovider {
  UserCredentialsDomainModel _credentials = UserCredentialsDomainModel(uId: '');

  @override
  Future<UserCredentialsDomainModel> getUserCredentials() => Future.value(_credentials);

  @override
  Future<void> setUid(String uId) async {
    _credentials = UserCredentialsDomainModel(uId: uId);
  }
}
