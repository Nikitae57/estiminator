import 'package:estiminator/app/sessions/sessions_overview/models/session_overview_state_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_overview_state_model.freezed.dart';

@freezed
class SessionsOverviewStateModel with _$SessionsOverviewStateModel {
  factory SessionsOverviewStateModel({
    required List<SessionOverviewStateModel> sessions,
  }) = _SessionsOverviewStateModel;
}
