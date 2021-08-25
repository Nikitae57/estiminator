import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';

const _NAME_FIELD = 'name';
const _VALUES_FIELD = 'values';

class EstimationScaleDomainModelMapper implements Mapper<Map<String, dynamic>, EstimationScaleDomainModel> {
  const EstimationScaleDomainModelMapper();

  @override
  EstimationScaleDomainModel map(Map<String, dynamic> input) {
    return EstimationScaleDomainModel(
      name: input[_NAME_FIELD] as String,
      values: (input[_VALUES_FIELD] as List<dynamic>).map((dynamic e) => e as String).toList(),
    );
  }
}
