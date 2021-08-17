import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_state_model.freezed.dart';

@freezed
class TaskStateModel with _$TaskStateModel {
  factory TaskStateModel({
    required String title,
    String? description,
    String? jiraLink,
  }) = _TaskStateModel;
}
