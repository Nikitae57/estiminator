import 'package:estiminator/domain/create_session/create_session_task_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_session_domain_model.freezed.dart';

@freezed
class CreateSessionDomainModel with _$CreateSessionDomainModel {
  factory CreateSessionDomainModel({
    required String creatorUid,
    required String sessionTitle,
    required String scaleName,
    required List<CreateSessionTaskDomainModel> tasks,
  }) = _CreateSessionDomainModel;
}
