import 'package:estiminator/session/domain/model/task_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_domain_model.freezed.dart';

@freezed
class SessionDomainModel with _$SessionDomainModel {
  const factory SessionDomainModel({
    required String id,
    required String title,
    required String creatorUid,
    required int? currentTaskIndex,
    required bool isFinished,
    required List<TaskDomainModel> tasks,
  }) = _SessionDomainModel;
}
