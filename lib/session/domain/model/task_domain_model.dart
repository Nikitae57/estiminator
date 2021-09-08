import 'package:freezed_annotation/freezed_annotation.dart';

import 'estimation_domain_model.dart';

part 'task_domain_model.freezed.dart';

@freezed
class TaskDomainModel with _$TaskDomainModel {
  const factory TaskDomainModel({
    required String title,
    required bool areCardsFlipped,
    String? description,
    String? finalEstimation,
    String? jiraLink,
    required List<EstimationDomainModel> estimations,
  }) = _TaskDomainModel;
}
