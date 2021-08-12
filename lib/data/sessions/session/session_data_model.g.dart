// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionDataModel _$_$_SessionDataModelFromJson(Map<String, dynamic> json) {
  return _$_SessionDataModel(
    id: json['id'] as String,
    title: json['title'] as String,
    creatorUid: json['creator_uid'] as String,
    isFinished: json['is_finished'] as bool,
    currentTaskIndex: json['current_task_index'] as int?,
    estimationScale: EstimationScaleDataModel.fromJson(
        json['estimation_scale'] as Map<String, dynamic>),
    tasks: (json['tasks'] as List<dynamic>)
        .map((e) => TaskDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SessionDataModelToJson(
        _$_SessionDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'creator_uid': instance.creatorUid,
      'is_finished': instance.isFinished,
      'current_task_index': instance.currentTaskIndex,
      'estimation_scale': instance.estimationScale,
      'tasks': instance.tasks,
    };
