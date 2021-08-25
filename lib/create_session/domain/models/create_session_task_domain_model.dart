import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_session_task_domain_model.freezed.dart';

@freezed
class CreateSessionTaskDomainModel with _$CreateSessionTaskDomainModel {
  factory CreateSessionTaskDomainModel({
    required String title,
    String? description,
    String? jiraLink,
  }) = _CreateSessionTaskDomainModel;
}
