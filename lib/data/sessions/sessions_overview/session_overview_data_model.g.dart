// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_overview_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionOverviewDataModel _$_$_SessionOverviewDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_SessionOverviewDataModel(
    title: json['title'] as String,
    isFinished: json['is_finished'] as bool,
    numTasks: json['num_tasks'] as int,
    creatorUid: json['creator_uid'] as String,
  );
}

Map<String, dynamic> _$_$_SessionOverviewDataModelToJson(
        _$_SessionOverviewDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'is_finished': instance.isFinished,
      'num_tasks': instance.numTasks,
      'creator_uid': instance.creatorUid,
    };
