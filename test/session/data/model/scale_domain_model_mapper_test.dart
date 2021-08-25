import 'dart:convert';

import 'package:estiminator/session/data/model/scale_domain_model_mapper.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';

const _NAME = 'name';
const _VALUE_1 = '1';
const _VALUE_2 = '2';
const _VALUE_3 = '3';
const _VALUES = [_VALUE_1, _VALUE_2, _VALUE_3];

const _JSON = '''
{
  "name":"$_NAME",
  "values":[
    "$_VALUE_1", "$_VALUE_2", "$_VALUE_3"
  ]
}
''';

const _ESTIMATION_SCALE_DOMAIN_MODEL = EstimationScaleDomainModel(name: _NAME, values: _VALUES);

void main() {
  const mapper = EstimationScaleDomainModelMapper();
  group('EstimationScaleDomainModelMapper tests -', () {
    test('''
    GIVEN input is correct
    WHEN mapper is called
    THEN should create correct model
    ''', () {
      final mappedModel = mapper.map(jsonDecode(_JSON) as Map<String, dynamic>);

      expect(mappedModel, equals(_ESTIMATION_SCALE_DOMAIN_MODEL));
    });
  });
}
