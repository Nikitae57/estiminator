import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_overview_domain_model.freezed.dart';

@freezed
class SessionOverviewDomainModel with _$SessionOverviewDomainModel {
  factory SessionOverviewDomainModel({
    required String id,
    required String title,
    required bool isFinished,
    required int numTasks,
    required String creatorUid,
  }) = _SessionOverviewDomainModel;
}
