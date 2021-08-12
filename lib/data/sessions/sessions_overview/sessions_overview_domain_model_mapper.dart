import 'package:estiminator/data/sessions/sessions_overview/session_overview_data_model.dart';
import 'package:estiminator/data/sessions/sessions_overview/sessions_overview_data_model.dart';
import 'package:estiminator/domain/core/mapper.dart';
import 'package:estiminator/domain/sessions/sessions_overview/session_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_domain_model.dart';

final sessionsDomainModelMapper = SessionsOverviewDomainModelMapper();

class SessionsOverviewDomainModelMapper
    extends Mapper<SessionsOverviewDataModel, SessionsOverviewDomainModel> {
  @override
  SessionsOverviewDomainModel map(SessionsOverviewDataModel input) =>
      SessionsOverviewDomainModel(
        sessions: input.sessions
            .map((dataSession) => _mapSession(dataSession))
            .toList(),
      );

  SessionOverviewDomainModel _mapSession(SessionOverviewDataModel dataModel) =>
      SessionOverviewDomainModel(
          title: dataModel.title,
          creatorUid: dataModel.creatorUid,
          numTasks: dataModel.numTasks,
          isFinished: dataModel.isFinished);
}
