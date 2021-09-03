import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/sessions_overview/presentation/models/session_overview_state_model.dart';
import 'package:estiminator/sessions_overview/presentation/models/sessions_overview_state_model.dart';
import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/sessions_overview/domain/session_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';
import 'package:injectable/injectable.dart';

SessionsOverviewStateModelMapper sessionsOverviewStateModelMapper = SessionsOverviewStateModelMapper(Strings());

@injectable
class SessionsOverviewStateModelMapper extends Mapper<SessionsOverviewDomainModel, SessionsOverviewStateModel> {
  SessionsOverviewStateModelMapper(this._strings);

  final Strings _strings;

  @override
  SessionsOverviewStateModel map(SessionsOverviewDomainModel input) => SessionsOverviewStateModel(
        sessions: input.sessions.map(_mapSessionOverview).toList(),
      );

  SessionOverviewStateModel _mapSessionOverview(
    SessionOverviewDomainModel domainModel,
  ) {
    return SessionOverviewStateModel(
      id: domainModel.id,
      title: domainModel.title,
      creatorName: domainModel.creatorUid,
      numTasksText: '${domainModel.numTasks} ${_strings.get(SId.SESSIONS_OVERVIEW_TASKS_NUMBER_LABEL)}',
      isFinishedLabelText: domainModel.isFinished
          ? _strings.get(SId.SESSIONS_OVERVIEW_FINISHED)
          : _strings.get(SId.SESSIONS_OVERVIEW_OPEN),
    );
  }
}
