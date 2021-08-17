import 'package:estiminator/domain/create_session/estimation_scales_domain_model.dart';
import 'package:estiminator/domain/create_session/estimation_scales_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetEstimationScalesUseCase {
  GetEstimationScalesUseCase(this._estimationScalesRepo);

  final IEstimationScalesRepo _estimationScalesRepo;

  Future<EstimationScalesDomainModel> getScales() =>
      _estimationScalesRepo.getScales();
}
