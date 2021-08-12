// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimation_scale_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstimationScaleDataModel _$_$_EstimationScaleDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_EstimationScaleDataModel(
    name: json['name'] as String,
    values: (json['values'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_EstimationScaleDataModelToJson(
        _$_EstimationScaleDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };
