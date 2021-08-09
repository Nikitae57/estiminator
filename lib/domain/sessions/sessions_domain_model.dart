import 'package:estiminator/domain/sessions/session_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_domain_model.freezed.dart';

@freezed
class SessionsDomainModel with _$SessionsDomainModel {
  factory SessionsDomainModel({
    required List<SessionDomainModel> sessions,
  }) = _SessionsDomainModel;

  SessionsDomainModel._();
}
