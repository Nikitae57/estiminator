// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionStateModelTearOff {
  const _$SessionStateModelTearOff();

  _SessionStateModel call(
      {required String sessionTitle, required String creatorName}) {
    return _SessionStateModel(
      sessionTitle: sessionTitle,
      creatorName: creatorName,
    );
  }
}

/// @nodoc
const $SessionStateModel = _$SessionStateModelTearOff();

/// @nodoc
mixin _$SessionStateModel {
  String get sessionTitle => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionStateModelCopyWith<SessionStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateModelCopyWith<$Res> {
  factory $SessionStateModelCopyWith(
          SessionStateModel value, $Res Function(SessionStateModel) then) =
      _$SessionStateModelCopyWithImpl<$Res>;
  $Res call({String sessionTitle, String creatorName});
}

/// @nodoc
class _$SessionStateModelCopyWithImpl<$Res>
    implements $SessionStateModelCopyWith<$Res> {
  _$SessionStateModelCopyWithImpl(this._value, this._then);

  final SessionStateModel _value;
  // ignore: unused_field
  final $Res Function(SessionStateModel) _then;

  @override
  $Res call({
    Object? sessionTitle = freezed,
    Object? creatorName = freezed,
  }) {
    return _then(_value.copyWith(
      sessionTitle: sessionTitle == freezed
          ? _value.sessionTitle
          : sessionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: creatorName == freezed
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SessionStateModelCopyWith<$Res>
    implements $SessionStateModelCopyWith<$Res> {
  factory _$SessionStateModelCopyWith(
          _SessionStateModel value, $Res Function(_SessionStateModel) then) =
      __$SessionStateModelCopyWithImpl<$Res>;
  @override
  $Res call({String sessionTitle, String creatorName});
}

/// @nodoc
class __$SessionStateModelCopyWithImpl<$Res>
    extends _$SessionStateModelCopyWithImpl<$Res>
    implements _$SessionStateModelCopyWith<$Res> {
  __$SessionStateModelCopyWithImpl(
      _SessionStateModel _value, $Res Function(_SessionStateModel) _then)
      : super(_value, (v) => _then(v as _SessionStateModel));

  @override
  _SessionStateModel get _value => super._value as _SessionStateModel;

  @override
  $Res call({
    Object? sessionTitle = freezed,
    Object? creatorName = freezed,
  }) {
    return _then(_SessionStateModel(
      sessionTitle: sessionTitle == freezed
          ? _value.sessionTitle
          : sessionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: creatorName == freezed
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SessionStateModel implements _SessionStateModel {
  _$_SessionStateModel({required this.sessionTitle, required this.creatorName});

  @override
  final String sessionTitle;
  @override
  final String creatorName;

  @override
  String toString() {
    return 'SessionStateModel(sessionTitle: $sessionTitle, creatorName: $creatorName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionStateModel &&
            (identical(other.sessionTitle, sessionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.sessionTitle, sessionTitle)) &&
            (identical(other.creatorName, creatorName) ||
                const DeepCollectionEquality()
                    .equals(other.creatorName, creatorName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sessionTitle) ^
      const DeepCollectionEquality().hash(creatorName);

  @JsonKey(ignore: true)
  @override
  _$SessionStateModelCopyWith<_SessionStateModel> get copyWith =>
      __$SessionStateModelCopyWithImpl<_SessionStateModel>(this, _$identity);
}

abstract class _SessionStateModel implements SessionStateModel {
  factory _SessionStateModel(
      {required String sessionTitle,
      required String creatorName}) = _$_SessionStateModel;

  @override
  String get sessionTitle => throw _privateConstructorUsedError;
  @override
  String get creatorName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionStateModelCopyWith<_SessionStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
