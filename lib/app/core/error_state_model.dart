import 'package:estiminator/domain/core/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_state_model.freezed.dart';

@freezed
class ErrorStateModel<T> with _$ErrorStateModel<T> {
  factory ErrorStateModel({
    required T stateModel,
    required ErrorModel errorModel,
  }) = _ErrorStateModel;
}
