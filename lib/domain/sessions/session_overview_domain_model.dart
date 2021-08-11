import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_overview_domain_model.freezed.dart';

@freezed
class SessionOverviewDomainModel with _$SessionOverviewDomainModel {
  factory SessionOverviewDomainModel({
    required String title,
    @JsonKey(name: 'is_finished') required bool isFinished,
    @JsonKey(name: 'num_tasks') required int numTasks,
    @JsonKey(name: 'creator_uid') required String creatorUid,
  }) = _SessionOverviewDomainModel;
}
