import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state_model.freezed.dart';

@freezed
class SessionStateModel with _$SessionStateModel {
  factory SessionStateModel({
    required String name,
    required String creatorName,
    required bool isFinished,
  }) = _SessionStateModel;

  SessionStateModel._();
}
