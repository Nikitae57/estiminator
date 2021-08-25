import 'package:estiminator/session/domain/model/full_session_domain_model.dart';
import 'package:estiminator/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSessionUseCase {
  GetSessionUseCase(this._sessionRepo);

  final ISessionRepo _sessionRepo;

  Future<Stream<FullSessionDomainModel>> getSessionStream({required String sessionId}) async {
    final scale = await _sessionRepo.getScale(sessionId: sessionId);
    return _sessionRepo
        .getSessionStream(sessionId)
        .map((session) => FullSessionDomainModel(session: session, estimationScale: scale));
  }
}
