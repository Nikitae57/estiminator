import 'package:estiminator/create_session/domain/models/create_session_task_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_state_model.freezed.dart';

@freezed
class TaskStateModel with _$TaskStateModel {
  const factory TaskStateModel({
    required String title,
    String? description,
    String? jiraLink,
  }) = _TaskStateModel;

  const TaskStateModel._();

  CreateSessionTaskDomainModel toDomainModel() {
    return CreateSessionTaskDomainModel(
      title: title,
      description: description,
      jiraLink: jiraLink,
    );
  }
}
