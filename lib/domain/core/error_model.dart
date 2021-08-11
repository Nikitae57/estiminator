import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';

@freezed
class ErrorModel {
  factory ErrorModel({
    required Exception cause,
    VoidCallback? retryAction,
  }) = _ErrorModel;
}
