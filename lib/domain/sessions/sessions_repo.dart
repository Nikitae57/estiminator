import 'package:estiminator/domain/sessions/sessions_domain_model.dart';

abstract class ISessionsRepo {
  Future<SessionsDomainModel> getSessions();
}
