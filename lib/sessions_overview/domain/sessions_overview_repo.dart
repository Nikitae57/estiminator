import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';

abstract class ISessionsOverviewRepo {
  Future<SessionsOverviewDomainModel> getSessionsOverview();
}
