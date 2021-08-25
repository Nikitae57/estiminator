import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/create_session/domain/service/estimation_scales_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetEstimationScalesUseCase {
  GetEstimationScalesUseCase(this._estimationScalesRepo);

  final IEstimationScalesService _estimationScalesRepo;

  Future<EstimationScalesDomainModel> getScales() => _estimationScalesRepo.getScales();
}
