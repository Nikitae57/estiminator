import 'dart:math';

import 'package:estiminator/domain/core/error_model.dart';
import 'package:estiminator/domain/core/result_wrapper.dart';
import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_overview/sessions_overview_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSessionsOverviewUseCase {
  GetSessionsOverviewUseCase({
    required ISessionsOverviewRepo sessionsRepo,
  }) : _sessionsRepo = sessionsRepo;

  final ISessionsOverviewRepo _sessionsRepo;

  Future<ResultWrapper<SessionsOverviewDomainModel, ErrorModel>>
      getSessionsOverview() async {
    try {
      if (Random().nextInt(100) > 70) {
        throw Exception();
      }
      return ResultWrapper.result(await _sessionsRepo.getSessionsOverview());
    } on Exception catch (ex) {
      return ResultWrapper.error(
        ErrorModel(cause: ex),
      );
    }
  }
}
