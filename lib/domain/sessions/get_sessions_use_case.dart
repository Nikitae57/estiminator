import 'package:estiminator/domain/sessions/sessions_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSessionsUseCase {
  GetSessionsUseCase({required ISessionsRepo sessionsRepo})
      : _sessionsRepo = sessionsRepo;

  final ISessionsRepo _sessionsRepo;

  Future<SessionsDomainModel> getSessions() => _sessionsRepo.getSessions();
}
