import 'package:freezed_annotation/freezed_annotation.dart';

import 'estimation_domain_model.dart';

part 'task_domain_model.freezed.dart';

@freezed
class TaskDomainModel with _$TaskDomainModel {
  factory TaskDomainModel({
    required String title,
    String? description,
    @JsonKey(name: 'final_estimation') String? finalEstimation,
    @JsonKey(name: 'jira_link') String? jiraLink,
    required List<EstimationDomainModel> estimations,
  }) = _TaskDomainModel;
}
