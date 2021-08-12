import 'package:estiminator/data/sessions/sessions_overview/fake_sessions_overview_repo/fake_sessions_json_provider.dart';
import 'package:estiminator/data/sessions/sessions_overview/sessions_overview_data_model.dart';
import 'package:estiminator/data/sessions/sessions_overview/sessions_overview_domain_model_mapper.dart';
import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

SessionsOverviewDomainModel _getSessionsOverview(Map<String, dynamic> json) {
  final dataModel = SessionsOverviewDataModel.fromJson(json);
  return sessionsDomainModelMapper.map(dataModel);
}

@Injectable(as: ISessionsOverviewRepo)
class FakeSessionsOverviewRepo implements ISessionsOverviewRepo {
  FakeSessionsOverviewRepo(this._jsonProvider);

  final FakeSessionsJsonProvider _jsonProvider;

  @override
  Future<SessionsOverviewDomainModel> getSessionsOverview() async {
    return compute<Map<String, dynamic>, SessionsOverviewDomainModel>(
      _getSessionsOverview,
      _jsonProvider.getFakeSessionsJson(),
    );
  }
}
