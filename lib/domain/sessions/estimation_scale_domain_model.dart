import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_scale_domain_model.freezed.dart';

@freezed
class EstimationScaleDomainModel with _$EstimationScaleDomainModel {
  factory EstimationScaleDomainModel({
    required String name,
    required List<String> values,
  }) = _EstimationScaleDomainModel;
}
