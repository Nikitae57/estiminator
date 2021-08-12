// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorStateModelTearOff {
  const _$ErrorStateModelTearOff();

  _ErrorStateModel<T> call<T>(
      {required T stateModel, required ErrorModel errorModel}) {
    return _ErrorStateModel<T>(
      stateModel: stateModel,
      errorModel: errorModel,
    );
  }
}

/// @nodoc
const $ErrorStateModel = _$ErrorStateModelTearOff();

/// @nodoc
mixin _$ErrorStateModel<T> {
  T get stateModel => throw _privateConstructorUsedError;
  ErrorModel get errorModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorStateModelCopyWith<T, ErrorStateModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateModelCopyWith<T, $Res> {
  factory $ErrorStateModelCopyWith(
          ErrorStateModel<T> value, $Res Function(ErrorStateModel<T>) then) =
      _$ErrorStateModelCopyWithImpl<T, $Res>;
  $Res call({T stateModel, ErrorModel errorModel});

  $ErrorModelCopyWith<$Res> get errorModel;
}

/// @nodoc
class _$ErrorStateModelCopyWithImpl<T, $Res>
    implements $ErrorStateModelCopyWith<T, $Res> {
  _$ErrorStateModelCopyWithImpl(this._value, this._then);

  final ErrorStateModel<T> _value;
  // ignore: unused_field
  final $Res Function(ErrorStateModel<T>) _then;

  @override
  $Res call({
    Object? stateModel = freezed,
    Object? errorModel = freezed,
  }) {
    return _then(_value.copyWith(
      stateModel: stateModel == freezed
          ? _value.stateModel
          : stateModel // ignore: cast_nullable_to_non_nullable
              as T,
      errorModel: errorModel == freezed
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }

  @override
  $ErrorModelCopyWith<$Res> get errorModel {
    return $ErrorModelCopyWith<$Res>(_value.errorModel, (value) {
      return _then(_value.copyWith(errorModel: value));
    });
  }
}

/// @nodoc
abstract class _$ErrorStateModelCopyWith<T, $Res>
    implements $ErrorStateModelCopyWith<T, $Res> {
  factory _$ErrorStateModelCopyWith(
          _ErrorStateModel<T> value, $Res Function(_ErrorStateModel<T>) then) =
      __$ErrorStateModelCopyWithImpl<T, $Res>;
  @override
  $Res call({T stateModel, ErrorModel errorModel});

  @override
  $ErrorModelCopyWith<$Res> get errorModel;
}

/// @nodoc
class __$ErrorStateModelCopyWithImpl<T, $Res>
    extends _$ErrorStateModelCopyWithImpl<T, $Res>
    implements _$ErrorStateModelCopyWith<T, $Res> {
  __$ErrorStateModelCopyWithImpl(
      _ErrorStateModel<T> _value, $Res Function(_ErrorStateModel<T>) _then)
      : super(_value, (v) => _then(v as _ErrorStateModel<T>));

  @override
  _ErrorStateModel<T> get _value => super._value as _ErrorStateModel<T>;

  @override
  $Res call({
    Object? stateModel = freezed,
    Object? errorModel = freezed,
  }) {
    return _then(_ErrorStateModel<T>(
      stateModel: stateModel == freezed
          ? _value.stateModel
          : stateModel // ignore: cast_nullable_to_non_nullable
              as T,
      errorModel: errorModel == freezed
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$_ErrorStateModel<T> implements _ErrorStateModel<T> {
  _$_ErrorStateModel({required this.stateModel, required this.errorModel});

  @override
  final T stateModel;
  @override
  final ErrorModel errorModel;

  @override
  String toString() {
    return 'ErrorStateModel<$T>(stateModel: $stateModel, errorModel: $errorModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorStateModel<T> &&
            (identical(other.stateModel, stateModel) ||
                const DeepCollectionEquality()
                    .equals(other.stateModel, stateModel)) &&
            (identical(other.errorModel, errorModel) ||
                const DeepCollectionEquality()
                    .equals(other.errorModel, errorModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stateModel) ^
      const DeepCollectionEquality().hash(errorModel);

  @JsonKey(ignore: true)
  @override
  _$ErrorStateModelCopyWith<T, _ErrorStateModel<T>> get copyWith =>
      __$ErrorStateModelCopyWithImpl<T, _ErrorStateModel<T>>(this, _$identity);
}

abstract class _ErrorStateModel<T> implements ErrorStateModel<T> {
  factory _ErrorStateModel(
      {required T stateModel,
      required ErrorModel errorModel}) = _$_ErrorStateModel<T>;

  @override
  T get stateModel => throw _privateConstructorUsedError;
  @override
  ErrorModel get errorModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorStateModelCopyWith<T, _ErrorStateModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
