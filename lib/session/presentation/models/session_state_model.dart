import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state_model.freezed.dart';

@freezed
class SessionStateModel with _$SessionStateModel {
  factory SessionStateModel({
    required String sessionTitle,
    required String creatorName,
  }) = _SessionStateModel;
}
