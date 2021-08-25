import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';

abstract class ISessionRepo {
  Stream<SessionDomainModel> getSessionStream(String id);
  Future<EstimationScaleDomainModel> getScale({required String sessionId});
}
