import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_state_model.freezed.dart';

@freezed
class SessionsStateModel with _$SessionsStateModel {
  factory SessionsStateModel({
    required String appBarTitle,
    required String username,
  }) = State;
}
