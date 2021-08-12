import 'package:estiminator/domain/session/task_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'estimation_scale_domain_model.dart';

part 'session_domain_model.freezed.dart';

@freezed
class SessionDomainModel with _$SessionDomainModel {
  factory SessionDomainModel({
    required String id,
    required String title,
    @JsonKey(name: 'creator_uid') required String creatorUid,
    @JsonKey(name: 'current_task_index') required int? currentTaskIndex,
    @JsonKey(name: 'is_finished') required bool isFinished,
    @JsonKey(name: 'estimation_scale')
        required EstimationScaleDomainModel estimationScale,
    required List<TaskDomainModel> tasks,
  }) = _SessionDomainModel;

  SessionDomainModel._();
}
