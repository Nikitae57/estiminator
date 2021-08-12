// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_overview_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionsOverviewDataModel _$_$_SessionsOverviewDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_SessionsOverviewDataModel(
    sessions: (json['sessions'] as List<dynamic>)
        .map(
            (e) => SessionOverviewDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SessionsOverviewDataModelToJson(
        _$_SessionsOverviewDataModel instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };
