// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessions_bundle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionsBundleModelTearOff {
  const _$SessionsBundleModelTearOff();

  _SessionsBundleModel call({required String userName}) {
    return _SessionsBundleModel(
      userName: userName,
    );
  }
}

/// @nodoc
const $SessionsBundleModel = _$SessionsBundleModelTearOff();

/// @nodoc
mixin _$SessionsBundleModel {
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsBundleModelCopyWith<SessionsBundleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsBundleModelCopyWith<$Res> {
  factory $SessionsBundleModelCopyWith(
          SessionsBundleModel value, $Res Function(SessionsBundleModel) then) =
      _$SessionsBundleModelCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class _$SessionsBundleModelCopyWithImpl<$Res>
    implements $SessionsBundleModelCopyWith<$Res> {
  _$SessionsBundleModelCopyWithImpl(this._value, this._then);

  final SessionsBundleModel _value;
  // ignore: unused_field
  final $Res Function(SessionsBundleModel) _then;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SessionsBundleModelCopyWith<$Res>
    implements $SessionsBundleModelCopyWith<$Res> {
  factory _$SessionsBundleModelCopyWith(_SessionsBundleModel value,
          $Res Function(_SessionsBundleModel) then) =
      __$SessionsBundleModelCopyWithImpl<$Res>;
  @override
  $Res call({String userName});
}

/// @nodoc
class __$SessionsBundleModelCopyWithImpl<$Res>
    extends _$SessionsBundleModelCopyWithImpl<$Res>
    implements _$SessionsBundleModelCopyWith<$Res> {
  __$SessionsBundleModelCopyWithImpl(
      _SessionsBundleModel _value, $Res Function(_SessionsBundleModel) _then)
      : super(_value, (v) => _then(v as _SessionsBundleModel));

  @override
  _SessionsBundleModel get _value => super._value as _SessionsBundleModel;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_SessionsBundleModel(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SessionsBundleModel extends _SessionsBundleModel {
  _$_SessionsBundleModel({required this.userName}) : super._();

  @override
  final String userName;

  @override
  String toString() {
    return 'SessionsBundleModel(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionsBundleModel &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userName);

  @JsonKey(ignore: true)
  @override
  _$SessionsBundleModelCopyWith<_SessionsBundleModel> get copyWith =>
      __$SessionsBundleModelCopyWithImpl<_SessionsBundleModel>(
          this, _$identity);
}

abstract class _SessionsBundleModel extends SessionsBundleModel {
  factory _SessionsBundleModel({required String userName}) =
      _$_SessionsBundleModel;
  _SessionsBundleModel._() : super._();

  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionsBundleModelCopyWith<_SessionsBundleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
