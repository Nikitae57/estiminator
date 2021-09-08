import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';

abstract class ISessionRepo {
  Stream<SessionDomainModel> getSessionStream(String sessionId);
  Future<EstimationScaleDomainModel> getScale({required String sessionId});
  Future<void> resetTaskEstimations({required String sessionId, required int taskIndex});
  Future<void> pickEstimation({
    required String sessionId,
    required int taskIndex,
    required String creatorUid,
    required String estimation,
  });
  Future<void> pickFinalEstimation({
    required String sessionId,
    required int taskIndex,
    required String creatorUid,
    required String estimation,
  });
  Future<void> flipTheCards(String sessionId, int taskIndex);
}
