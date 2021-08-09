import 'package:estiminator/app/core/mapper.dart';
import 'package:estiminator/data/sessions/fake_sessions_repo/fake_sessions_json_provider.dart';
import 'package:estiminator/data/sessions/sessions_data_model.dart';
import 'package:estiminator/data/sessions/sessions_domain_model_mapper.dart';
import 'package:estiminator/domain/sessions/sessions_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

SessionsDomainModel _getSessions(_GetSessionsParam param) {
  final dataModel = SessionsDataModel.fromJson(param.json);
  return param.mapper.map(dataModel);
}

class _GetSessionsParam {
  _GetSessionsParam(this.json, this.mapper);

  final Map<String, dynamic> json;
  final SessionsDomainModelMapper mapper;
}

@Injectable(as: ISessionsRepo)
class FakeSessionsRepo implements ISessionsRepo {
  FakeSessionsRepo(this._jsonProvider, this._mapper);

  final FakeSessionsJsonProvider _jsonProvider;
  final SessionsDomainModelMapper _mapper;

  @override
  Future<SessionsDomainModel> getSessions() async {
    return compute<_GetSessionsParam, SessionsDomainModel>(
      _getSessions,
      _GetSessionsParam(_jsonProvider.getFakeSessionsJson(), _mapper),
    );
  }
}
