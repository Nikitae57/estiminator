import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_scale_state_model.freezed.dart';

@freezed
class EstimationScaleStateModel with _$EstimationScaleStateModel {
  factory EstimationScaleStateModel({
    required String name,
    required List<String> values,
    required IconData? iconData,
  }) = _EstimationScaleStateModel;
}
