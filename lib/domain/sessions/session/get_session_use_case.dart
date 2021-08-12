import 'package:estiminator/domain/core/error_model.dart';
import 'package:estiminator/domain/core/result_wrapper.dart';
import 'package:estiminator/domain/sessions/session/session_domain_model.dart';
import 'package:estiminator/domain/sessions/session/session_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSessionUserCase {
  GetSessionUserCase({
    required ISessionRepo sessionRepo,
  }) : _sessionRepo = sessionRepo;

  final ISessionRepo _sessionRepo;

  Future<ResultWrapper<SessionDomainModel, ErrorModel>> getSessionById(
    String id,
  ) async {
    try {
      return ResultWrapper.result(await _sessionRepo.getSession(id));
    } on Exception catch (ex) {
      final errorModel = ErrorModel(
        cause: ex,
        retryAction: () => getSessionById(id),
      );

      return ResultWrapper.error(errorModel);
    }
  }
}
