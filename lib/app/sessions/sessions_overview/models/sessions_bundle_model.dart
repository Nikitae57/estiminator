import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_bundle_model.freezed.dart';

@freezed
class SessionsBundleModel with _$SessionsBundleModel {
  factory SessionsBundleModel({required String userName}) =
      _SessionsBundleModel;

  SessionsBundleModel._();
}
