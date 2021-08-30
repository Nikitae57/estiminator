import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';

abstract class ICreateSessionRepo {
  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel);
}
