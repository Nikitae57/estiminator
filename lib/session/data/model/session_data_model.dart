import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_data_model.freezed.dart';

@freezed
class SessionDataModel with _$SessionDataModel {
  const factory SessionDataModel({
    required String id,
    required Map<String, dynamic> json,
  }) = _SessionDataModel;
}
