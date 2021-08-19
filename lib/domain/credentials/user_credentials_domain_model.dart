import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_domain_model.freezed.dart';

@freezed
class UserCredentialsDomainModel with _$UserCredentialsDomainModel {
  factory UserCredentialsDomainModel({
    required String uId,
    required String userName,
  }) = _UserCredentialsDomainModel;
}
