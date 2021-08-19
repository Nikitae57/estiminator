import 'dart:math';

import 'package:estiminator/domain/credentials/user_credentials_domain_model.dart';
import 'package:estiminator/domain/credentials/user_credentials_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserCredentialsprovider)
class FakeUserCredentialsProvider implements IUserCredentialsprovider {
  @override
  Future<UserCredentialsDomainModel> getUserCredentials() {
    return Future.delayed(
      Duration(milliseconds: Random().nextInt(2000)),
      () => UserCredentialsDomainModel(
        uId: 'uId',
        userName: 'userName',
      ),
    );
  }
}
