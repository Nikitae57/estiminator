import 'package:estiminator/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class FlipCardsUseCase {
  FlipCardsUseCase(this._sessionRepo);

  final ISessionRepo _sessionRepo;

  Future<void> flipCards(String sessionId, int taskIndex) {
    return _sessionRepo.flipTheCards(sessionId, taskIndex);
  }
}
