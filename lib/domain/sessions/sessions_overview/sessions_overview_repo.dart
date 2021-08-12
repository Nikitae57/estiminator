import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_domain_model.dart';

abstract class ISessionsOverviewRepo {
  Future<SessionsOverviewDomainModel> getSessionsOverview();
}
