// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorModelTearOff {
  const _$ErrorModelTearOff();

  _ErrorModel call({required Exception cause, void Function()? retryAction}) {
    return _ErrorModel(
      cause: cause,
      retryAction: retryAction,
    );
  }
}

/// @nodoc
const $ErrorModel = _$ErrorModelTearOff();

/// @nodoc
mixin _$ErrorModel {
  Exception get cause => throw _privateConstructorUsedError;
  void Function()? get retryAction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res>;
  $Res call({Exception cause, void Function()? retryAction});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res> implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  final ErrorModel _value;
  // ignore: unused_field
  final $Res Function(ErrorModel) _then;

  @override
  $Res call({
    Object? cause = freezed,
    Object? retryAction = freezed,
  }) {
    return _then(_value.copyWith(
      cause: cause == freezed
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as Exception,
      retryAction: retryAction == freezed
          ? _value.retryAction
          : retryAction // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorModelCopyWith<$Res> implements $ErrorModelCopyWith<$Res> {
  factory _$ErrorModelCopyWith(
          _ErrorModel value, $Res Function(_ErrorModel) then) =
      __$ErrorModelCopyWithImpl<$Res>;
  @override
  $Res call({Exception cause, void Function()? retryAction});
}

/// @nodoc
class __$ErrorModelCopyWithImpl<$Res> extends _$ErrorModelCopyWithImpl<$Res>
    implements _$ErrorModelCopyWith<$Res> {
  __$ErrorModelCopyWithImpl(
      _ErrorModel _value, $Res Function(_ErrorModel) _then)
      : super(_value, (v) => _then(v as _ErrorModel));

  @override
  _ErrorModel get _value => super._value as _ErrorModel;

  @override
  $Res call({
    Object? cause = freezed,
    Object? retryAction = freezed,
  }) {
    return _then(_ErrorModel(
      cause: cause == freezed
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as Exception,
      retryAction: retryAction == freezed
          ? _value.retryAction
          : retryAction // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_ErrorModel implements _ErrorModel {
  _$_ErrorModel({required this.cause, this.retryAction});

  @override
  final Exception cause;
  @override
  final void Function()? retryAction;

  @override
  String toString() {
    return 'ErrorModel(cause: $cause, retryAction: $retryAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorModel &&
            (identical(other.cause, cause) ||
                const DeepCollectionEquality().equals(other.cause, cause)) &&
            (identical(other.retryAction, retryAction) ||
                const DeepCollectionEquality()
                    .equals(other.retryAction, retryAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cause) ^
      const DeepCollectionEquality().hash(retryAction);

  @JsonKey(ignore: true)
  @override
  _$ErrorModelCopyWith<_ErrorModel> get copyWith =>
      __$ErrorModelCopyWithImpl<_ErrorModel>(this, _$identity);
}

abstract class _ErrorModel implements ErrorModel {
  factory _ErrorModel(
      {required Exception cause, void Function()? retryAction}) = _$_ErrorModel;

  @override
  Exception get cause => throw _privateConstructorUsedError;
  @override
  void Function()? get retryAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorModelCopyWith<_ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
