import 'package:estiminator/core/domain/credentials/user_credentials_provider.dart';
import 'package:estiminator/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class PickEstimationUseCase {
  PickEstimationUseCase(this._sessionRepo, this._credentialsProvider);

  final ISessionRepo _sessionRepo;
  final IUserCredentialsProvider _credentialsProvider;

  Future<void> pickEstimation({
    required String sessionId,
    required int taskIndex,
    required String estimation,
  }) async {
    final credentials = await _credentialsProvider.getUserCredentials();

    return _sessionRepo.pickEstimation(
      sessionId: sessionId,
      taskIndex: taskIndex,
      creatorUid: credentials.uId,
      estimation: estimation,
    );
  }

  Future<void> pickFinalEstimation({
    required String sessionId,
    required int taskIndex,
    required String estimation,
  }) async {
    final credentials = await _credentialsProvider.getUserCredentials();

    return _sessionRepo.pickFinalEstimation(
      sessionId: sessionId,
      taskIndex: taskIndex,
      creatorUid: credentials.uId,
      estimation: estimation,
    );
  }
}
