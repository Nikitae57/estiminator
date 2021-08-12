import 'package:estiminator/data/sessions/session/tasks/task_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasks_data_model.freezed.dart';
part 'tasks_data_model.g.dart';

@freezed
class TasksDataModel with _$TasksDataModel {
  factory TasksDataModel({
    required List<TaskDataModel> tasks,
  }) = _TasksDataModel;

  factory TasksDataModel.fromJson(Map<String, dynamic> map) =>
      _$TasksDataModelFromJson(map);
}
