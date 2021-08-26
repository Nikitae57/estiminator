import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scale_state_model.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scales_state_model.dart';
import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

EstimationScalesStateModelMapper estimationScalesStateModelMapper = EstimationScalesStateModelMapper(Strings());

class EstimationScalesStateModelMapper implements Mapper<EstimationScalesDomainModel, EstimationScalesStateModel> {
  EstimationScalesStateModelMapper(this._strings);

  final Strings _strings;

  @override
  EstimationScalesStateModel map(EstimationScalesDomainModel input) {
    return EstimationScalesStateModel(
      title: _strings.get(SId.SCALES_TITLE),
      iconData: FontAwesomeIcons.sortAmountDown,
      scales: input.scales.map(_mapScale).toList(),
    );
  }

  EstimationScaleStateModel _mapScale(EstimationScaleDomainModel domainModel) {
    return EstimationScaleStateModel(
      name: domainModel.name,
      values: domainModel.values,
      iconData: _getIconByScalename(domainModel.name),
    );
  }

  IconData? _getIconByScalename(String scaleName) {
    final scaleNameLower = scaleName.toLowerCase();

    if (scaleNameLower == _strings.get(SId.SCALE_NAME_FIBONACCI)) {
      return FontAwesomeIcons.signal;
    } else if (scaleNameLower == _strings.get(SId.SCALE_NAME_SIMPLE)) {
      return FontAwesomeIcons.thLarge;
    } else {
      return null;
    }
  }
}
