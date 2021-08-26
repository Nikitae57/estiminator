import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/create_session/domain/service/estimation_scales_service.dart';
import 'package:estiminator/create_session/domain/use_case/get_estimation_scales_use_case.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_estimation_scales_use_case_test.mocks.dart';

const _NAME = 'name';
const _NAME_1 = 'name1';
const _NAME_2 = 'name2';
const _VALUES = ['1', '2', '3'];
const _VALUES_1 = ['4', '5', '6'];
const _VALUES_2 = ['7', '8', '9'];
const _ESTIMATION_SCALES_DOMAIN_MODEL = EstimationScalesDomainModel(scales: [
  EstimationScaleDomainModel(name: _NAME, values: _VALUES),
  EstimationScaleDomainModel(name: _NAME_1, values: _VALUES_1),
  EstimationScaleDomainModel(name: _NAME_2, values: _VALUES_2),
]);

@GenerateMocks([IEstimationScalesService])
void main() {
  final scalesRepo = MockIEstimationScalesService();
  final error = Exception();

  group('GetEstimationScalesUseCase tests -', () {
    test('''
    GIVEN service fails
    WHEN use case is called
    THEN use case should fail
    ''', () async {
      when(scalesRepo.getScales()).thenAnswer((_) => Future.error(error));
      final useCase = GetEstimationScalesUseCase(scalesRepo);

      expectLater(() => useCase.getScales(), throwsA(equals(error)));
    });

    test('''
    GIVEN service returns successfull result
    WHEN use case is called
    THEN use case should return successfull result
    ''', () async {
      when(scalesRepo.getScales()).thenAnswer((_) => Future.value(_ESTIMATION_SCALES_DOMAIN_MODEL));
      final useCase = GetEstimationScalesUseCase(scalesRepo);

      final scales = await useCase.getScales();

      expect(scales, equals(_ESTIMATION_SCALES_DOMAIN_MODEL));
    });
  });
}
