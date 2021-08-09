import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_data_model.freezed.dart';
part 'estimation_data_model.g.dart';

@freezed
class EstimationDataModel with _$EstimationDataModel {
  factory EstimationDataModel({
    @JsonKey(name: 'estimation_value') required String estimationValue,
    @JsonKey(name: 'creator_uid') required String creatorUid,
  }) = _EstimationDataModel;

  factory EstimationDataModel.fromJson(Map<String, dynamic> map) =>
      _$EstimationDataModelFromJson(map);
}
