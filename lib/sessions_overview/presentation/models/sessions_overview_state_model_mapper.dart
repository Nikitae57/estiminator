import 'package:estiminator/sessions_overview/presentation/models/session_overview_state_model.dart';
import 'package:estiminator/sessions_overview/presentation/models/sessions_overview_state_model.dart';
import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/sessions_overview/domain/session_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';

final SessionsOverviewStateModelMapper sessionsOverviewStateModelMapper = SessionsOverviewStateModelMapper();

class SessionsOverviewStateModelMapper extends Mapper<SessionsOverviewDomainModel, SessionsOverviewStateModel> {
  @override
  SessionsOverviewStateModel map(SessionsOverviewDomainModel input) => SessionsOverviewStateModel(
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
