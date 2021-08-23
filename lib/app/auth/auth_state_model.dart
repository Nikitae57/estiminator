import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state_model.freezed.dart';

@immutable
@freezed
class AuthStateModel with _$AuthStateModel {
  const factory AuthStateModel({
    required String appBarTitle,
    required String title,
    required String hint,
    required String loginButtonText,
  }) = _AuthStateModel;
}
