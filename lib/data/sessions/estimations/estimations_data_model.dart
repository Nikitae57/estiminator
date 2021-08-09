import 'package:freezed_annotation/freezed_annotation.dart';

import 'estimation_data_model.dart';

part 'estimations_data_model.freezed.dart';
part 'estimations_data_model.g.dart';

@freezed
class EstimationsDataModel with _$EstimationsDataModel {
  factory EstimationsDataModel({
    required List<EstimationDataModel> estimations,
  }) = _EstimationsDataModel;

  factory EstimationsDataModel.fromJson(Map<String, dynamic> map) =>
      _$EstimationsDataModelFromJson(map);
}
