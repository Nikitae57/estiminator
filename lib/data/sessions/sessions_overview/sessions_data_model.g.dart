// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionDataModel _$_$_SessionDataModelFromJson(Map<String, dynamic> json) {
  return _$_SessionDataModel(
    sessions: (json['sessions'] as List<dynamic>)
        .map((e) => SessionDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SessionDataModelToJson(
        _$_SessionDataModel instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };
