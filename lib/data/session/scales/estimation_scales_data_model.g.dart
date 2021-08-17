// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimation_scales_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstimationScalesDataModel _$_$_EstimationScalesDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_EstimationScalesDataModel(
    scales: (json['scales'] as List<dynamic>)
        .map(
            (e) => EstimationScaleDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_EstimationScalesDataModelToJson(
        _$_EstimationScalesDataModel instance) =>
    <String, dynamic>{
      'scales': instance.scales,
    };
