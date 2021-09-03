import 'package:estiminator/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResetTaskEstimationsUseCase {
  ResetTaskEstimationsUseCase(this._sessionRepo);
  final ISessionRepo _sessionRepo;

  Future<void> resetTaskEstimations({required String sessionId, required int taskIndex}) =>
      _sessionRepo.resetTaskEstimations(sessionId: sessionId, taskIndex: taskIndex);
}
