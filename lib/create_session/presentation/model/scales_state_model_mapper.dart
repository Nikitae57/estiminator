import 'package:estiminator/create_session/presentation/model/estimation_scale_state_model.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scales_state_model.dart';
import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

const _TITLE = 'Pick a scale you like ❤️';

const _SCALE_NAME_FIBONACCI = 'fibonacci';
const _SCALE_NAME_SIMPLE = 'simple';

EstimationScalesStateModelMapper estimationScalesStateModelMapper = EstimationScalesStateModelMapper();

class EstimationScalesStateModelMapper implements Mapper<EstimationScalesDomainModel, EstimationScalesStateModel> {
  @override
  EstimationScalesStateModel map(EstimationScalesDomainModel input) {
    return EstimationScalesStateModel(
        title: _TITLE, iconData: FontAwesomeIcons.sortAmountDown, scales: input.scales.map(_mapScale).toList());
  }

  EstimationScaleStateModel _mapScale(EstimationScaleDomainModel domainModel) {
    return EstimationScaleStateModel(
      name: domainModel.name,
      values: domainModel.values,
      iconData: _getIconByScalename(domainModel.name),
    );
  }

  IconData? _getIconByScalename(String scaleName) {
    switch (scaleName.toLowerCase()) {
      case _SCALE_NAME_FIBONACCI:
        return FontAwesomeIcons.signal;
      case _SCALE_NAME_SIMPLE:
        return FontAwesomeIcons.thLarge;
      default:
        return null;
    }
  }
}
