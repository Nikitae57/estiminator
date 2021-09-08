import 'dart:math';

import 'package:estiminator/core/domain/error_model.dart';
import 'package:estiminator/core/domain/result_wrapper.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSessionsOverviewUseCase {
  GetSessionsOverviewUseCase({
    required ISessionsOverviewRepo sessionsRepo,
  }) : _sessionsRepo = sessionsRepo;

  final ISessionsOverviewRepo _sessionsRepo;

  Future<ResultWrapper<SessionsOverviewDomainModel, ErrorModel>> getSessionsOverview() async {
    try {
      return ResultWrapper.result(await _sessionsRepo.getSessionsOverview());
    } on Exception catch (ex) {
      return ResultWrapper.error(
        ErrorModel(cause: ex),
      );
    }
  }
}
