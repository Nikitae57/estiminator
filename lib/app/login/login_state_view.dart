import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state_view.freezed.dart';

@freezed
class LoginStateView with _$LoginStateView {
  factory LoginStateView({
    required String appBarTitle,
    required String title,
    required String hint,
    required String loginButtonText,
  }) = _LoginStateView;

  LoginStateView._();
}
