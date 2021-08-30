import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scale_state_model.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scales_state_model.dart';
import 'package:estiminator/create_session/presentation/model/scales_state_model_mapper.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'scales_state_model_mapper_test.mocks.dart';

const _VALUES = ['1', '2', '3'];
const _VALUES_1 = ['4', '5', '6'];
const _VALUES_2 = ['7', '8', '9'];

const _TITLE = 'title';
const _FIBONACCI = 'fib';
const _SIMPLE = 'simple';

const _ESTIMATION_SCALES_DOMAIN_MODEL = EstimationScalesDomainModel(scales: [
  EstimationScaleDomainModel(name: _FIBONACCI, values: _VALUES),
  EstimationScaleDomainModel(name: _FIBONACCI, values: _VALUES_1),
  EstimationScaleDomainModel(name: _SIMPLE, values: _VALUES_2),
]);

const _ESTIMATION_SCALES_STATE_MODEL = EstimationScalesStateModel(
  title: _TITLE,
  iconData: FontAwesomeIcons.sortAmountDown,
  scales: [
    EstimationScaleStateModel(
      name: _FIBONACCI,
      values: _VALUES,
      iconData: FontAwesomeIcons.signal,
    ),
    EstimationScaleStateModel(
      name: _FIBONACCI,
      values: _VALUES_1,
      iconData: FontAwesomeIcons.signal,
    ),
    EstimationScaleStateModel(name: _SIMPLE, values: _VALUES_2, iconData: FontAwesomeIcons.thLarge),
  ],
);

@GenerateMocks([Strings])
void main() {
  final strings = MockStrings();

  setUpAll(() {
    when(strings.get(SId.SCALES_TITLE)).thenReturn(_TITLE);
    when(strings.get(SId.SCALE_NAME_FIBONACCI)).thenReturn(_FIBONACCI);
    when(strings.get(SId.SCALE_NAME_SIMPLE)).thenReturn(_SIMPLE);
  });

  group('EstimationScalesStateModelMapper tests -', () {
    test('''
    GIVEN scales domain model
    WHEN mapper is called
    THEN should return correctly mapped model
    ''', () {
      final mapper = EstimationScalesStateModelMapper(strings);

      final mappedModel = mapper.map(_ESTIMATION_SCALES_DOMAIN_MODEL);

      expect(mappedModel, equals(_ESTIMATION_SCALES_STATE_MODEL));
    });
  });
}
