// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimation_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstimationDataModel _$_$_EstimationDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_EstimationDataModel(
    estimationValue: json['value'] as String,
    creatorUid: json['creator_uid'] as String,
  );
}

Map<String, dynamic> _$_$_EstimationDataModelToJson(
        _$_EstimationDataModel instance) =>
    <String, dynamic>{
      'value': instance.estimationValue,
      'creator_uid': instance.creatorUid,
    };
