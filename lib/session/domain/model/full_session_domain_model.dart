import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_session_domain_model.freezed.dart';

@freezed
class FullSessionDomainModel with _$FullSessionDomainModel {
  const factory FullSessionDomainModel({
    required SessionDomainModel session,
    required EstimationScaleDomainModel estimationScale,
  }) = _FullSessionDomainModel;
}
