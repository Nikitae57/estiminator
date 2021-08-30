import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/create_session/domain/models/estimation_scales_domain_model.dart';
import 'package:estiminator/create_session/domain/service/estimation_scales_service.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';

const _SCALES_COLLECTION_NAME = 'estimation_scales';
const _NAME_FIELD = 'name';
const _VALUES_FIELD = 'values';

class FirebaseEstimationScalesRepo implements IEstimationScalesRepo {
  @override
  Future<EstimationScalesDomainModel> getScales() async {
    final firestore = FirebaseFirestore.instance;
    final scalesQuery = await firestore.collection(_SCALES_COLLECTION_NAME).get();

    final scales = scalesQuery.docs.map((doc) {
      return EstimationScaleDomainModel(
        name: doc[_NAME_FIELD] as String,
        values: (doc[_VALUES_FIELD] as List<dynamic>).map((dynamic e) => e as String).toList(),
      );
    }).toList();

    return EstimationScalesDomainModel(scales: scales);
  }
}
