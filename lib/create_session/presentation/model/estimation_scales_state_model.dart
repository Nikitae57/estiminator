import 'package:estiminator/create_session/presentation/model/estimation_scale_state_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimation_scales_state_model.freezed.dart';

@freezed
class EstimationScalesStateModel with _$EstimationScalesStateModel {
  factory EstimationScalesStateModel({
    required String title,
    required IconData iconData,
    required List<EstimationScaleStateModel> scales,
  }) = _EstimationScalesStateModel;

  static EstimationScalesStateModel empty() {
    return EstimationScalesStateModel(
      title: '',
      iconData: Icons.ac_unit,
      scales: [],
    );
  }
}
