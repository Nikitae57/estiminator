import 'package:estiminator/domain/create_session/create_session_domain_model.dart';

abstract class ICreateSessionService {
  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel);
}
