import 'package:estiminator/domain/sessions/session/session_domain_model.dart';

abstract class ISessionRepo {
  Future<SessionDomainModel> getSession(String id);
}
