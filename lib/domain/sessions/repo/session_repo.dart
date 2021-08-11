import 'package:estiminator/domain/sessions/session_domain_model.dart';

abstract class ISessionRepo {
  Future<SessionDomainModel> getSession(String id);
}
