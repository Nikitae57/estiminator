import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';

abstract class ICreateSessionService {
  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel);
}
