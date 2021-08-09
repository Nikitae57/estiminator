import 'package:estiminator/data/sessions/scales/estimation_scale_data_model.dart';
import 'package:estiminator/data/sessions/tasks/task_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_data_model.freezed.dart';
part 'session_data_model.g.dart';

@freezed
class SessionDataModel with _$SessionDataModel {
  factory SessionDataModel({
    required String title,
    @JsonKey(name: 'creator_uid') required String creatorUid,
    @JsonKey(name: 'is_finished') required bool isFinished,
    @JsonKey(name: 'current_task_index') int? currentTaskIndex,
    @JsonKey(name: 'estimation_scale')
        required EstimationScaleDataModel estimationScale,
    required List<TaskDataModel> tasks,
  }) = _SessionDataModel;

  factory SessionDataModel.fromJson(Map<String, dynamic> json) =>
      _$SessionDataModelFromJson(json);
}
