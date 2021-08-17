import 'package:estiminator/domain/create_session/estimation_scales_domain_model.dart';

abstract class IEstimationScalesRepo {
  Future<EstimationScalesDomainModel> getScales();
}
