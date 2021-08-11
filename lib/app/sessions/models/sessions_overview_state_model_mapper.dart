import 'package:estiminator/domain/core/mapper.dart';
import 'package:estiminator/app/sessions/models/session_overview_state_model.dart';
import 'package:estiminator/app/sessions/models/sessions_overview_state_model.dart';
import 'package:estiminator/domain/sessions/session_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_overview_domain_model.dart';

final SessionsOverviewStateModelMapper sessionsOverviewStateModelMapper =
    SessionsOverviewStateModelMapper();

class SessionsOverviewStateModelMapper
    extends Mapper<SessionsOverviewDomainModel, SessionsOverviewStateModel> {
  @override
  SessionsOverviewStateModel map(SessionsOverviewDomainModel input) =>
      SessionsOverviewStateModel(
          sessions: input.sessions.map(_mapSessionOverview).toList());

  SessionOverviewStateModel _mapSessionOverview(
          SessionOverviewDomainModel domainModel) =>
      SessionOverviewStateModel(
        title: domainModel.title,
        creatorName: domainModel.creatorUid,
        numTasksText: '${domainModel.numTasks} task(s)',
        isFinished: domainModel.isFinished,
      );
}
