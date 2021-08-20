import 'package:estiminator/domain/sessions_overview/session_overview_domain_model.dart';
import 'package:estiminator/domain/sessions_overview/sessions_overview_domain_model.dart';
import 'package:estiminator/domain/sessions_overview/sessions_overview_repo.dart';

class FakeSessionsOverviewRepo implements ISessionsOverviewRepo {
  final fakeSessionsOverviewDomainModel = SessionsOverviewDomainModel(
    sessions: [
      SessionOverviewDomainModel(title: 'Title 1', isFinished: false, numTasks: 10, creatorUid: 'Matt'),
      SessionOverviewDomainModel(title: 'Title 2', isFinished: false, numTasks: 15, creatorUid: 'Anna'),
      SessionOverviewDomainModel(title: 'Title 3', isFinished: false, numTasks: 5, creatorUid: 'Dan'),
    ],
  );

  @override
  Future<SessionsOverviewDomainModel> getSessionsOverview() async {
    return fakeSessionsOverviewDomainModel;
  }
}
