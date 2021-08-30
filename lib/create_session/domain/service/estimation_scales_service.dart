import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';

abstract class IEstimationScalesRepo {
  Future<EstimationScalesDomainModel> getScales();
}
