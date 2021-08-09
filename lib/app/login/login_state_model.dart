import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_model.freezed.dart';

@freezed
class LoginStateModel with _$LoginStateModel {
  factory LoginStateModel({
    required String appBarTitle,
    required String title,
    required String hint,
    required String loginButtonText,
  }) = _LoginStateModel;

  LoginStateModel._();
}
