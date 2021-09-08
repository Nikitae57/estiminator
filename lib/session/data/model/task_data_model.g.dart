// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDataModel _$_$_TaskDataModelFromJson(Map<String, dynamic> json) {
  return _$_TaskDataModel(
    title: json['title'] as String,
    areCardsFlipped: json['are_cards_flipped'] as bool,
    description: json['description'] as String?,
    finalEstimation: json['final_estimation'] as String?,
    jiraLink: json['jira_link'] as String?,
    estimations: (json['estimations'] as List<dynamic>)
        .map((e) => EstimationDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TaskDataModelToJson(_$_TaskDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'are_cards_flipped': instance.areCardsFlipped,
      'description': instance.description,
      'final_estimation': instance.finalEstimation,
      'jira_link': instance.jiraLink,
      'estimations': instance.estimations,
    };
