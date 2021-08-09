import 'package:estiminator/app/core/mapper.dart';
import 'package:estiminator/data/sessions/sessions_data_model.dart';
import 'package:estiminator/domain/sessions/session_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_domain_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class SessionsDomainModelMapper
    extends Mapper<SessionsDataModel, SessionsDomainModel> {
  @override
  SessionsDomainModel map(SessionsDataModel data) {
    return SessionsDomainModel(sessions: <SessionDomainModel>[]);
  }
}
