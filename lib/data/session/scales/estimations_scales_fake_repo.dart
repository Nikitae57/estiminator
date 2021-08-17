import 'dart:math';

import 'package:estiminator/domain/create_session/estimation_scales_domain_model.dart';
import 'package:estiminator/domain/create_session/estimation_scales_repo.dart';
import 'package:estiminator/domain/session/estimation_scale_domain_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IEstimationScalesRepo)
class EstimationScalesFakeRepo implements IEstimationScalesRepo {
  @override
  Future<EstimationScalesDomainModel> getScales() async {
    return Future.delayed(
      Duration(milliseconds: Random().nextInt(2000)),
      () {
        if (Random().nextInt(100) > 60) {
          throw Exception();
        }
        return _dataModel;
      },
    );
  }

  final _dataModel = EstimationScalesDomainModel(scales: [
    EstimationScaleDomainModel(
      name: 'Fibonacci',
      values: ['0', '1/2', '1', '2', '3', '5', '8', '13', '20', '40', '?'],
    ),
    EstimationScaleDomainModel(
      name: 'Simple',
      values: ['Small', 'Medium', 'Large', '?'],
    ),
  ]);
}
