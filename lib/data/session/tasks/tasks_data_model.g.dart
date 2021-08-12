// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksDataModel _$_$_TasksDataModelFromJson(Map<String, dynamic> json) {
  return _$_TasksDataModel(
    tasks: (json['tasks'] as List<dynamic>)
        .map((e) => TaskDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TasksDataModelToJson(_$_TasksDataModel instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
