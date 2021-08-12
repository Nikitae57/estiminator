// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessions_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionsDataModel _$SessionsDataModelFromJson(Map<String, dynamic> json) {
  return _SessionDataModel.fromJson(json);
}

/// @nodoc
class _$SessionsDataModelTearOff {
  const _$SessionsDataModelTearOff();

  _SessionDataModel call({required List<SessionDataModel> sessions}) {
    return _SessionDataModel(
      sessions: sessions,
    );
  }

  SessionsDataModel fromJson(Map<String, Object> json) {
    return SessionsDataModel.fromJson(json);
  }
}

/// @nodoc
const $SessionsDataModel = _$SessionsDataModelTearOff();

/// @nodoc
mixin _$SessionsDataModel {
  List<SessionDataModel> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionsDataModelCopyWith<SessionsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsDataModelCopyWith<$Res> {
  factory $SessionsDataModelCopyWith(
          SessionsDataModel value, $Res Function(SessionsDataModel) then) =
      _$SessionsDataModelCopyWithImpl<$Res>;
  $Res call({List<SessionDataModel> sessions});
}

/// @nodoc
class _$SessionsDataModelCopyWithImpl<$Res>
    implements $SessionsDataModelCopyWith<$Res> {
  _$SessionsDataModelCopyWithImpl(this._value, this._then);

  final SessionsDataModel _value;
  // ignore: unused_field
  final $Res Function(SessionsDataModel) _then;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$SessionDataModelCopyWith<$Res>
    implements $SessionsDataModelCopyWith<$Res> {
  factory _$SessionDataModelCopyWith(
          _SessionDataModel value, $Res Function(_SessionDataModel) then) =
      __$SessionDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SessionDataModel> sessions});
}

/// @nodoc
class __$SessionDataModelCopyWithImpl<$Res>
    extends _$SessionsDataModelCopyWithImpl<$Res>
    implements _$SessionDataModelCopyWith<$Res> {
  __$SessionDataModelCopyWithImpl(
      _SessionDataModel _value, $Res Function(_SessionDataModel) _then)
      : super(_value, (v) => _then(v as _SessionDataModel));

  @override
  _SessionDataModel get _value => super._value as _SessionDataModel;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_SessionDataModel(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionDataModel implements _SessionDataModel {
  _$_SessionDataModel({required this.sessions});

  factory _$_SessionDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionDataModelFromJson(json);

  @override
  final List<SessionDataModel> sessions;

  @override
  String toString() {
    return 'SessionsDataModel(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionDataModel &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessions);

  @JsonKey(ignore: true)
  @override
  _$SessionDataModelCopyWith<_SessionDataModel> get copyWith =>
      __$SessionDataModelCopyWithImpl<_SessionDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionDataModelToJson(this);
  }
}

abstract class _SessionDataModel implements SessionsDataModel {
  factory _SessionDataModel({required List<SessionDataModel> sessions}) =
      _$_SessionDataModel;

  factory _SessionDataModel.fromJson(Map<String, dynamic> json) =
      _$_SessionDataModel.fromJson;

  @override
  List<SessionDataModel> get sessions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDataModelCopyWith<_SessionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
