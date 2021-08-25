import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_domain_model.freezed.dart';

@freezed
class EstimationDomainModel with _$EstimationDomainModel {
  const factory EstimationDomainModel({
    required String value,
    required String creatorUid,
  }) = _EstimationDomainModel;
}
