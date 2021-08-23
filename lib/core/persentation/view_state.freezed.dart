// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewStateTearOff {
  const _$ViewStateTearOff();

  Data<SuccessType, FailType> data<SuccessType, FailType>(SuccessType data) {
    return Data<SuccessType, FailType>(
      data,
    );
  }

  Loading<SuccessType, FailType> lodaing<SuccessType, FailType>() {
    return Loading<SuccessType, FailType>();
  }

  Error<SuccessType, FailType> error<SuccessType, FailType>(
      {required FailType error}) {
    return Error<SuccessType, FailType>(
      error: error,
    );
  }
}

/// @nodoc
const $ViewState = _$ViewStateTearOff();

/// @nodoc
mixin _$ViewState<SuccessType, FailType> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessType data) data,
    required TResult Function() lodaing,
    required TResult Function(FailType error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessType data)? data,
    TResult Function()? lodaing,
    TResult Function(FailType error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data<SuccessType, FailType> value) data,
    required TResult Function(Loading<SuccessType, FailType> value) lodaing,
    required TResult Function(Error<SuccessType, FailType> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data<SuccessType, FailType> value)? data,
    TResult Function(Loading<SuccessType, FailType> value)? lodaing,
    TResult Function(Error<SuccessType, FailType> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<SuccessType, FailType, $Res> {
  factory $ViewStateCopyWith(ViewState<SuccessType, FailType> value,
          $Res Function(ViewState<SuccessType, FailType>) then) =
      _$ViewStateCopyWithImpl<SuccessType, FailType, $Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<SuccessType, FailType, $Res>
    implements $ViewStateCopyWith<SuccessType, FailType, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState<SuccessType, FailType> _value;
  // ignore: unused_field
  final $Res Function(ViewState<SuccessType, FailType>) _then;
}

/// @nodoc
abstract class $DataCopyWith<SuccessType, FailType, $Res> {
  factory $DataCopyWith(Data<SuccessType, FailType> value,
          $Res Function(Data<SuccessType, FailType>) then) =
      _$DataCopyWithImpl<SuccessType, FailType, $Res>;
  $Res call({SuccessType data});
}

/// @nodoc
class _$DataCopyWithImpl<SuccessType, FailType, $Res>
    extends _$ViewStateCopyWithImpl<SuccessType, FailType, $Res>
    implements $DataCopyWith<SuccessType, FailType, $Res> {
  _$DataCopyWithImpl(Data<SuccessType, FailType> _value,
      $Res Function(Data<SuccessType, FailType>) _then)
      : super(_value, (v) => _then(v as Data<SuccessType, FailType>));

  @override
  Data<SuccessType, FailType> get _value =>
      super._value as Data<SuccessType, FailType>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Data<SuccessType, FailType>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuccessType,
    ));
  }
}

/// @nodoc

class _$Data<SuccessType, FailType> extends Data<SuccessType, FailType> {
  _$Data(this.data) : super._();

  @override
  final SuccessType data;

  @override
  String toString() {
    return 'ViewState<$SuccessType, $FailType>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data<SuccessType, FailType> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<SuccessType, FailType, Data<SuccessType, FailType>>
      get copyWith => _$DataCopyWithImpl<SuccessType, FailType,
          Data<SuccessType, FailType>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessType data) data,
    required TResult Function() lodaing,
    required TResult Function(FailType error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessType data)? data,
    TResult Function()? lodaing,
    TResult Function(FailType error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data<SuccessType, FailType> value) data,
    required TResult Function(Loading<SuccessType, FailType> value) lodaing,
    required TResult Function(Error<SuccessType, FailType> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data<SuccessType, FailType> value)? data,
    TResult Function(Loading<SuccessType, FailType> value)? lodaing,
    TResult Function(Error<SuccessType, FailType> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data<SuccessType, FailType>
    extends ViewState<SuccessType, FailType> {
  factory Data(SuccessType data) = _$Data<SuccessType, FailType>;
  Data._() : super._();

  SuccessType get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<SuccessType, FailType, Data<SuccessType, FailType>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<SuccessType, FailType, $Res> {
  factory $LoadingCopyWith(Loading<SuccessType, FailType> value,
          $Res Function(Loading<SuccessType, FailType>) then) =
      _$LoadingCopyWithImpl<SuccessType, FailType, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<SuccessType, FailType, $Res>
    extends _$ViewStateCopyWithImpl<SuccessType, FailType, $Res>
    implements $LoadingCopyWith<SuccessType, FailType, $Res> {
  _$LoadingCopyWithImpl(Loading<SuccessType, FailType> _value,
      $Res Function(Loading<SuccessType, FailType>) _then)
      : super(_value, (v) => _then(v as Loading<SuccessType, FailType>));

  @override
  Loading<SuccessType, FailType> get _value =>
      super._value as Loading<SuccessType, FailType>;
}

/// @nodoc

class _$Loading<SuccessType, FailType> extends Loading<SuccessType, FailType> {
  _$Loading() : super._();

  @override
  String toString() {
    return 'ViewState<$SuccessType, $FailType>.lodaing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<SuccessType, FailType>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessType data) data,
    required TResult Function() lodaing,
    required TResult Function(FailType error) error,
  }) {
    return lodaing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessType data)? data,
    TResult Function()? lodaing,
    TResult Function(FailType error)? error,
    required TResult orElse(),
  }) {
    if (lodaing != null) {
      return lodaing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data<SuccessType, FailType> value) data,
    required TResult Function(Loading<SuccessType, FailType> value) lodaing,
    required TResult Function(Error<SuccessType, FailType> value) error,
  }) {
    return lodaing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data<SuccessType, FailType> value)? data,
    TResult Function(Loading<SuccessType, FailType> value)? lodaing,
    TResult Function(Error<SuccessType, FailType> value)? error,
    required TResult orElse(),
  }) {
    if (lodaing != null) {
      return lodaing(this);
    }
    return orElse();
  }
}

abstract class Loading<SuccessType, FailType>
    extends ViewState<SuccessType, FailType> {
  factory Loading() = _$Loading<SuccessType, FailType>;
  Loading._() : super._();
}

/// @nodoc
abstract class $ErrorCopyWith<SuccessType, FailType, $Res> {
  factory $ErrorCopyWith(Error<SuccessType, FailType> value,
          $Res Function(Error<SuccessType, FailType>) then) =
      _$ErrorCopyWithImpl<SuccessType, FailType, $Res>;
  $Res call({FailType error});
}

/// @nodoc
class _$ErrorCopyWithImpl<SuccessType, FailType, $Res>
    extends _$ViewStateCopyWithImpl<SuccessType, FailType, $Res>
    implements $ErrorCopyWith<SuccessType, FailType, $Res> {
  _$ErrorCopyWithImpl(Error<SuccessType, FailType> _value,
      $Res Function(Error<SuccessType, FailType>) _then)
      : super(_value, (v) => _then(v as Error<SuccessType, FailType>));

  @override
  Error<SuccessType, FailType> get _value =>
      super._value as Error<SuccessType, FailType>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error<SuccessType, FailType>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FailType,
    ));
  }
}

/// @nodoc

class _$Error<SuccessType, FailType> extends Error<SuccessType, FailType> {
  _$Error({required this.error}) : super._();

  @override
  final FailType error;

  @override
  String toString() {
    return 'ViewState<$SuccessType, $FailType>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<SuccessType, FailType> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<SuccessType, FailType, Error<SuccessType, FailType>>
      get copyWith => _$ErrorCopyWithImpl<SuccessType, FailType,
          Error<SuccessType, FailType>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SuccessType data) data,
    required TResult Function() lodaing,
    required TResult Function(FailType error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SuccessType data)? data,
    TResult Function()? lodaing,
    TResult Function(FailType error)? error,
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
    required TResult Function(Data<SuccessType, FailType> value) data,
    required TResult Function(Loading<SuccessType, FailType> value) lodaing,
    required TResult Function(Error<SuccessType, FailType> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data<SuccessType, FailType> value)? data,
    TResult Function(Loading<SuccessType, FailType> value)? lodaing,
    TResult Function(Error<SuccessType, FailType> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<SuccessType, FailType>
    extends ViewState<SuccessType, FailType> {
  factory Error({required FailType error}) = _$Error<SuccessType, FailType>;
  Error._() : super._();

  FailType get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<SuccessType, FailType, Error<SuccessType, FailType>>
      get copyWith => throw _privateConstructorUsedError;
}
