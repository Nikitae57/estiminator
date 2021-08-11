import 'package:estiminator/domain/sessions/sessions_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/repo/sessions_overview_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSessionsOverviewUseCase {
  GetSessionsOverviewUseCase({required ISessionsOverviewRepo sessionsRepo})
      : _sessionsRepo = sessionsRepo;

  final ISessionsOverviewRepo _sessionsRepo;

  Future<SessionsOverviewDomainModel> getSessionsOverview() =>
      _sessionsRepo.getSessionsOverview();
}
