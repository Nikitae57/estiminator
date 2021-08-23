import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_overview_data_model.freezed.dart';
part 'session_overview_data_model.g.dart';

@freezed
class SessionOverviewDataModel with _$SessionOverviewDataModel {
  factory SessionOverviewDataModel({
    required String title,
    @JsonKey(name: 'is_finished') required bool isFinished,
    @JsonKey(name: 'num_tasks') required int numTasks,
    @JsonKey(name: 'creator_uid') required String creatorUid,
  }) = _SessionOverviewDataModel;

  factory SessionOverviewDataModel.fromJson(Map<String, dynamic> map) => _$SessionOverviewDataModelFromJson(map);
}
