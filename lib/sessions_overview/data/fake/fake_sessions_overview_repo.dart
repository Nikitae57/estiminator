import 'package:estiminator/sessions_overview/domain/session_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_repo.dart';

class FakeSessionsOverviewRepo implements ISessionsOverviewRepo {
  final fakeSessionsOverviewDomainModel = SessionsOverviewDomainModel(
    sessions: [
      SessionOverviewDomainModel(id: 'id', title: 'Title 1', isFinished: false, numTasks: 10, creatorUid: 'Matt'),
      SessionOverviewDomainModel(id: 'id1', title: 'Title 2', isFinished: false, numTasks: 15, creatorUid: 'Anna'),
      SessionOverviewDomainModel(id: 'id2', title: 'Title 3', isFinished: false, numTasks: 5, creatorUid: 'Dan'),
    ],
  );

  @override
  Future<SessionsOverviewDomainModel> getSessionsOverview() async {
    return fakeSessionsOverviewDomainModel;
  }
}
