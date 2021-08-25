import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_domain_model.freezed.dart';

@freezed
class UserCredentialsDomainModel with _$UserCredentialsDomainModel {
  const factory UserCredentialsDomainModel({required String uId}) = _UserCredentialsDomainModel;
}
