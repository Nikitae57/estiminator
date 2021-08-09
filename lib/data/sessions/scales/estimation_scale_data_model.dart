import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_scale_data_model.freezed.dart';
part 'estimation_scale_data_model.g.dart';

@freezed
class EstimationScaleDataModel with _$EstimationScaleDataModel {
  factory EstimationScaleDataModel({
    required String name,
    required List<String> values,
  }) = _EstimationScaleDataModel;

  factory EstimationScaleDataModel.fromJson(Map<String, dynamic> map) =>
      _$EstimationScaleDataModelFromJson(map);
}
