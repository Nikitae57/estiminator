import 'dart:math';

import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/create_session/domain/service/estimation_scales_service.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IEstimationScalesService)
class EstimationScalesFakeRepo implements IEstimationScalesService {
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

  final _dataModel = const EstimationScalesDomainModel(scales: [
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
