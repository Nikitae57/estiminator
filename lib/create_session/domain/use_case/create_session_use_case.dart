import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';
import 'package:estiminator/create_session/domain/service/create_session_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateSessionUseCase {
  CreateSessionUseCase(this._createSessionService);

  final ICreateSessionRepo _createSessionService;

  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel) =>
      _createSessionService.createSession(createSessionDomainModel);
}
