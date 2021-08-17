import 'package:estiminator/domain/session/estimation_scale_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_scales_domain_model.freezed.dart';

@freezed
class EstimationScalesDomainModel with _$EstimationScalesDomainModel {
  factory EstimationScalesDomainModel({
    required List<EstimationScaleDomainModel> scales,
  }) = _EstimationScalesDomainModel;
}
