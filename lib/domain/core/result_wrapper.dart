import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_wrapper.freezed.dart';

@freezed
class ResultWrapper<ResultType, ErrorType>
    with _$ResultWrapper<ResultType, ErrorType> {
  factory ResultWrapper.result(ResultType result) = Result;
  factory ResultWrapper.error(ErrorType error) = Error;
}
