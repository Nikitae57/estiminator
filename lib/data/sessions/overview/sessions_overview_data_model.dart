import 'package:estiminator/data/sessions/overview/session_overview_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_overview_data_model.freezed.dart';
part 'sessions_overview_data_model.g.dart';

@freezed
class SessionsOverviewDataModel with _$SessionsOverviewDataModel {
  factory SessionsOverviewDataModel({
    required List<SessionOverviewDataModel> sessions,
  }) = _SessionsOverviewDataModel;

  factory SessionsOverviewDataModel.fromJson(Map<String, dynamic> map) =>
      _$SessionsOverviewDataModelFromJson(map);
}
