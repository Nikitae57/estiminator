import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_data_model.freezed.dart';
part 'estimation_data_model.g.dart';

@freezed
class EstimationDataModel with _$EstimationDataModel {
  const factory EstimationDataModel({
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'creator_uid') required String creatorUid,
  }) = _EstimationDataModel;

  factory EstimationDataModel.fromJson(Map<String, dynamic> map) => _$EstimationDataModelFromJson(map);
}
