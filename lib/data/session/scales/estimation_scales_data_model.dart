import 'package:estiminator/data/session/scales/estimation_scale_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_scales_data_model.freezed.dart';
part 'estimation_scales_data_model.g.dart';

@freezed
class EstimationScalesDataModel with _$EstimationScalesDataModel {
  factory EstimationScalesDataModel({
    required List<EstimationScaleDataModel> scales,
  }) = _EstimationScalesDataModel;

  factory EstimationScalesDataModel.fromJson(Map<String, dynamic> map) =>
      _$EstimationScalesDataModelFromJson(map);
}
