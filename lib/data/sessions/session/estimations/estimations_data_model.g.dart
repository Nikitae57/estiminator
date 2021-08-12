// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimations_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstimationsDataModel _$_$_EstimationsDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_EstimationsDataModel(
    estimations: (json['estimations'] as List<dynamic>)
        .map((e) => EstimationDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_EstimationsDataModelToJson(
        _$_EstimationsDataModel instance) =>
    <String, dynamic>{
      'estimations': instance.estimations,
    };
