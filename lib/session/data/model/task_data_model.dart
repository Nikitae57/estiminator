import 'package:estiminator/session/data/model/estimation_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_data_model.freezed.dart';
part 'task_data_model.g.dart';

@freezed
class TaskDataModel with _$TaskDataModel {
  factory TaskDataModel({
    required String title,
    @JsonKey(name: 'are_cards_flipped') required bool areCardsFlipped,
    String? description,
    @JsonKey(name: 'final_estimation') String? finalEstimation,
    @JsonKey(name: 'jira_link') String? jiraLink,
    required List<EstimationDataModel> estimations,
  }) = _TaskDataModel;

  factory TaskDataModel.fromJson(Map<String, dynamic> map) => _$TaskDataModelFromJson(map);
}
