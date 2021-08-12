import 'package:estiminator/app/sessions/sessions_overview/models/session_overview_state_model.dart';
import 'package:estiminator/app/sessions/sessions_overview/models/sessions_overview_state_model.dart';
import 'package:estiminator/domain/core/mapper.dart';
import 'package:estiminator/domain/sessions/sessions_overview/session_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_domain_model.dart';

final SessionsOverviewStateModelMapper sessionsOverviewStateModelMapper =
    SessionsOverviewStateModelMapper();

class SessionsOverviewStateModelMapper
    extends Mapper<SessionsOverviewDomainModel, SessionsOverviewStateModel> {
  @override
  SessionsOverviewStateModel map(SessionsOverviewDomainModel input) =>
      SessionsOverviewStateModel(
        sessions: input.sessions.map(_mapSessionOverview).toList(),
      );

  SessionOverviewStateModel _mapSessionOverview(
    SessionOverviewDomainModel domainModel,
  ) {
    return SessionOverviewStateModel(
      title: domainModel.title,
      creatorName: domainModel.creatorUid,
      numTasksText: '${domainModel.numTasks} task(s)',
      isFinished: domainModel.isFinished,
    );
  }
}
