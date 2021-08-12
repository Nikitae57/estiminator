import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_domain_model.freezed.dart';

@freezed
class EstimationDomainModel with _$EstimationDomainModel {
  factory EstimationDomainModel({
    @JsonKey(name: 'estimation_value') required String estimationValue,
    @JsonKey(name: 'creator_uid') required String creatorUid,
  }) = _EstimationDomainModel;
}
