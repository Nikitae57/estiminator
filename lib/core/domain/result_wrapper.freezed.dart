// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultWrapperTearOff {
  const _$ResultWrapperTearOff();

  Result<ResultType, ErrorType> result<ResultType, ErrorType>(
      ResultType result) {
    return Result<ResultType, ErrorType>(
      result,
    );
  }

  Error<ResultType, ErrorType> error<ResultType, ErrorType>(ErrorType error) {
    return Error<ResultType, ErrorType>(
      error,
    );
  }
}

/// @nodoc
const $ResultWrapper = _$ResultWrapperTearOff();

/// @nodoc
mixin _$ResultWrapper<ResultType, ErrorType> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResultType result) result,
    required TResult Function(ErrorType error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResultType result)? result,
    TResult Function(ErrorType error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Result<ResultType, ErrorType> value) result,
    required TResult Function(Error<ResultType, ErrorType> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Result<ResultType, ErrorType> value)? result,
    TResult Function(Error<ResultType, ErrorType> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultWrapperCopyWith<ResultType, ErrorType, $Res> {
  factory $ResultWrapperCopyWith(ResultWrapper<ResultType, ErrorType> value,
          $Res Function(ResultWrapper<ResultType, ErrorType>) then) =
      _$ResultWrapperCopyWithImpl<ResultType, ErrorType, $Res>;
}

/// @nodoc
class _$ResultWrapperCopyWithImpl<ResultType, ErrorType, $Res>
    implements $ResultWrapperCopyWith<ResultType, ErrorType, $Res> {
  _$ResultWrapperCopyWithImpl(this._value, this._then);

  final ResultWrapper<ResultType, ErrorType> _value;
  // ignore: unused_field
  final $Res Function(ResultWrapper<ResultType, ErrorType>) _then;
}

/// @nodoc
abstract class $ResultCopyWith<ResultType, ErrorType, $Res> {
  factory $ResultCopyWith(Result<ResultType, ErrorType> value,
          $Res Function(Result<ResultType, ErrorType>) then) =
      _$ResultCopyWithImpl<ResultType, ErrorType, $Res>;
  $Res call({ResultType result});
}

/// @nodoc
class _$ResultCopyWithImpl<ResultType, ErrorType, $Res>
    extends _$ResultWrapperCopyWithImpl<ResultType, ErrorType, $Res>
    implements $ResultCopyWith<ResultType, ErrorType, $Res> {
  _$ResultCopyWithImpl(Result<ResultType, ErrorType> _value,
      $Res Function(Result<ResultType, ErrorType>) _then)
      : super(_value, (v) => _then(v as Result<ResultType, ErrorType>));

  @override
  Result<ResultType, ErrorType> get _value =>
      super._value as Result<ResultType, ErrorType>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(Result<ResultType, ErrorType>(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultType,
    ));
  }
}

/// @nodoc

class _$Result<ResultType, ErrorType> implements Result<ResultType, ErrorType> {
  _$Result(this.result);

  @override
  final ResultType result;

  @override
  String toString() {
    return 'ResultWrapper<$ResultType, $ErrorType>.result(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Result<ResultType, ErrorType> &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $ResultCopyWith<ResultType, ErrorType, Result<ResultType, ErrorType>>
      get copyWith => _$ResultCopyWithImpl<ResultType, ErrorType,
          Result<ResultType, ErrorType>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResultType result) result,
    required TResult Function(ErrorType error) error,
  }) {
    return result(this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResultType result)? result,
    TResult Function(ErrorType error)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Result<ResultType, ErrorType> value) result,
    required TResult Function(Error<ResultType, ErrorType> value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Result<ResultType, ErrorType> value)? result,
    TResult Function(Error<ResultType, ErrorType> value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class Result<ResultType, ErrorType>
    implements ResultWrapper<ResultType, ErrorType> {
  factory Result(ResultType result) = _$Result<ResultType, ErrorType>;

  ResultType get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<ResultType, ErrorType, Result<ResultType, ErrorType>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<ResultType, ErrorType, $Res> {
  factory $ErrorCopyWith(Error<ResultType, ErrorType> value,
          $Res Function(Error<ResultType, ErrorType>) then) =
      _$ErrorCopyWithImpl<ResultType, ErrorType, $Res>;
  $Res call({ErrorType error});
}

/// @nodoc
class _$ErrorCopyWithImpl<ResultType, ErrorType, $Res>
    extends _$ResultWrapperCopyWithImpl<ResultType, ErrorType, $Res>
    implements $ErrorCopyWith<ResultType, ErrorType, $Res> {
  _$ErrorCopyWithImpl(Error<ResultType, ErrorType> _value,
      $Res Function(Error<ResultType, ErrorType>) _then)
      : super(_value, (v) => _then(v as Error<ResultType, ErrorType>));

  @override
  Error<ResultType, ErrorType> get _value =>
      super._value as Error<ResultType, ErrorType>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error<ResultType, ErrorType>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorType,
    ));
  }
}

/// @nodoc

class _$Error<ResultType, ErrorType> implements Error<ResultType, ErrorType> {
  _$Error(this.error);

  @override
  final ErrorType error;

  @override
  String toString() {
    return 'ResultWrapper<$ResultType, $ErrorType>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<ResultType, ErrorType> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<ResultType, ErrorType, Error<ResultType, ErrorType>>
      get copyWith => _$ErrorCopyWithImpl<ResultType, ErrorType,
          Error<ResultType, ErrorType>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResultType result) result,
    required TResult Function(ErrorType error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResultType result)? result,
    TResult Function(ErrorType error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Result<ResultType, ErrorType> value) result,
    required TResult Function(Error<ResultType, ErrorType> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Result<ResultType, ErrorType> value)? result,
    TResult Function(Error<ResultType, ErrorType> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<ResultType, ErrorType>
    implements ResultWrapper<ResultType, ErrorType> {
  factory Error(ErrorType error) = _$Error<ResultType, ErrorType>;

  ErrorType get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<ResultType, ErrorType, Error<ResultType, ErrorType>>
      get copyWith => throw _privateConstructorUsedError;
}
