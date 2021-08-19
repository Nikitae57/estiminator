// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_credentials_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserCredentialsDomainModelTearOff {
  const _$UserCredentialsDomainModelTearOff();

  _UserCredentialsDomainModel call(
      {required String uId, required String userName}) {
    return _UserCredentialsDomainModel(
      uId: uId,
      userName: userName,
    );
  }
}

/// @nodoc
const $UserCredentialsDomainModel = _$UserCredentialsDomainModelTearOff();

/// @nodoc
mixin _$UserCredentialsDomainModel {
  String get uId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCredentialsDomainModelCopyWith<UserCredentialsDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsDomainModelCopyWith<$Res> {
  factory $UserCredentialsDomainModelCopyWith(UserCredentialsDomainModel value,
          $Res Function(UserCredentialsDomainModel) then) =
      _$UserCredentialsDomainModelCopyWithImpl<$Res>;
  $Res call({String uId, String userName});
}

/// @nodoc
class _$UserCredentialsDomainModelCopyWithImpl<$Res>
    implements $UserCredentialsDomainModelCopyWith<$Res> {
  _$UserCredentialsDomainModelCopyWithImpl(this._value, this._then);

  final UserCredentialsDomainModel _value;
  // ignore: unused_field
  final $Res Function(UserCredentialsDomainModel) _then;

  @override
  $Res call({
    Object? uId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCredentialsDomainModelCopyWith<$Res>
    implements $UserCredentialsDomainModelCopyWith<$Res> {
  factory _$UserCredentialsDomainModelCopyWith(
          _UserCredentialsDomainModel value,
          $Res Function(_UserCredentialsDomainModel) then) =
      __$UserCredentialsDomainModelCopyWithImpl<$Res>;
  @override
  $Res call({String uId, String userName});
}

/// @nodoc
class __$UserCredentialsDomainModelCopyWithImpl<$Res>
    extends _$UserCredentialsDomainModelCopyWithImpl<$Res>
    implements _$UserCredentialsDomainModelCopyWith<$Res> {
  __$UserCredentialsDomainModelCopyWithImpl(_UserCredentialsDomainModel _value,
      $Res Function(_UserCredentialsDomainModel) _then)
      : super(_value, (v) => _then(v as _UserCredentialsDomainModel));

  @override
  _UserCredentialsDomainModel get _value =>
      super._value as _UserCredentialsDomainModel;

  @override
  $Res call({
    Object? uId = freezed,
    Object? userName = freezed,
  }) {
    return _then(_UserCredentialsDomainModel(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserCredentialsDomainModel implements _UserCredentialsDomainModel {
  _$_UserCredentialsDomainModel({required this.uId, required this.userName});

  @override
  final String uId;
  @override
  final String userName;

  @override
  String toString() {
    return 'UserCredentialsDomainModel(uId: $uId, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserCredentialsDomainModel &&
            (identical(other.uId, uId) ||
                const DeepCollectionEquality().equals(other.uId, uId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uId) ^
      const DeepCollectionEquality().hash(userName);

  @JsonKey(ignore: true)
  @override
  _$UserCredentialsDomainModelCopyWith<_UserCredentialsDomainModel>
      get copyWith => __$UserCredentialsDomainModelCopyWithImpl<
          _UserCredentialsDomainModel>(this, _$identity);
}

abstract class _UserCredentialsDomainModel
    implements UserCredentialsDomainModel {
  factory _UserCredentialsDomainModel(
      {required String uId,
      required String userName}) = _$_UserCredentialsDomainModel;

  @override
  String get uId => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCredentialsDomainModelCopyWith<_UserCredentialsDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
