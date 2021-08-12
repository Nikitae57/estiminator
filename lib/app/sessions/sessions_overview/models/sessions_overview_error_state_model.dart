import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_overview_error_state_model.freezed.dart';

@freezed
class SessionsOverviewErrorStateModel with _$SessionsOverviewErrorStateModel {
  factory SessionsOverviewErrorStateModel({
    required String errorMessage,
    required String retryButtonText,
    required IconData retryButtonIcon,
  }) = _SessionsOverviewErrorStateModel;
}
