import 'package:estiminator/sessions_overview/domain/session_overview_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_overview_domain_model.freezed.dart';

@freezed
class SessionsOverviewDomainModel with _$SessionsOverviewDomainModel {
  factory SessionsOverviewDomainModel({
    required List<SessionOverviewDomainModel> sessions,
  }) = _SessionsOverviewDomainModel;
}
