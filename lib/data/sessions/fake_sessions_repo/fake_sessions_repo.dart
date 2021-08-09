import 'package:estiminator/data/sessions/fake_sessions_repo/fake_sessions_json_provider.dart';
import 'package:estiminator/data/sessions/sessions_data_model.dart';
import 'package:estiminator/data/sessions/sessions_domain_model_mapper.dart';
import 'package:estiminator/domain/sessions/sessions_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

SessionsDomainModel _getSessions(Map<String, dynamic> json) {
  final dataModel = SessionsDataModel.fromJson(json);
  return sessionsDomainModelMapper.map(dataModel);
}

@Injectable(as: ISessionsRepo)
class FakeSessionsRepo implements ISessionsRepo {
  FakeSessionsRepo(this._jsonProvider);

  final FakeSessionsJsonProvider _jsonProvider;

  @override
  Future<SessionsDomainModel> getSessions() async {
    return compute<Map<String, dynamic>, SessionsDomainModel>(
      _getSessions,
      _jsonProvider.getFakeSessionsJson(),
    );
  }
}
