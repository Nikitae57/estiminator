import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';

abstract class IEstimationScalesService {
  Future<EstimationScalesDomainModel> getScales();
}
