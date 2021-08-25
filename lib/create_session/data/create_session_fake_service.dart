import 'dart:math';

import 'package:estiminator/sessions_overview/data/fake/fake_sessions_overview_repo.dart';
import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';
import 'package:estiminator/create_session/domain/service/create_session_service.dart';
import 'package:estiminator/sessions_overview/domain/session_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICreateSessionService)
class CreateSessionFakeService implements ICreateSessionService {
  CreateSessionFakeService(this.fakeSessionsOverviewRepo);

  final ISessionsOverviewRepo fakeSessionsOverviewRepo;

  @override
  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel) async {
    await Future<void>.delayed(Duration(milliseconds: Random().nextInt(2000)));

    final sessionOverviewDomainModel = SessionOverviewDomainModel(
      title: createSessionDomainModel.sessionTitle,
      isFinished: false,
      numTasks: createSessionDomainModel.tasks.length,
      creatorUid: createSessionDomainModel.creatorUid,
    );

    (fakeSessionsOverviewRepo as FakeSessionsOverviewRepo)
        .fakeSessionsOverviewDomainModel
        .sessions
        .add(sessionOverviewDomainModel);
  }
}
