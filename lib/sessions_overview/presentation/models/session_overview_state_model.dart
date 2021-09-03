import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_overview_state_model.freezed.dart';

@freezed
class SessionOverviewStateModel with _$SessionOverviewStateModel {
  factory SessionOverviewStateModel({
    required String id,
    required String title,
    required String creatorName,
    required String numTasksText,
    required String isFinishedLabelText,
  }) = _SessionOverviewStateModel;
}
