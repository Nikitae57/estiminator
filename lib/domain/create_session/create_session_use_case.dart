import 'package:estiminator/domain/create_session/create_session_domain_model.dart';
import 'package:estiminator/domain/create_session/create_session_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateSessionUseCase {
  CreateSessionUseCase(this._createSessionService);

  final ICreateSessionService _createSessionService;

  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel) =>
      _createSessionService.createSession(createSessionDomainModel);
}
