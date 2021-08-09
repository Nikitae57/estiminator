import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<SuccessType, FailType> with _$ViewState<SuccessType, FailType> {
  factory ViewState.data({required SuccessType data}) = Data;
  factory ViewState.lodaing() = Loading;
  factory ViewState.error({FailType? error}) = Error;

  ViewState._();
}
