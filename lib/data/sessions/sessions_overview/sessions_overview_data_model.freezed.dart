// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessions_overview_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionsOverviewDataModel _$SessionsOverviewDataModelFromJson(
    Map<String, dynamic> json) {
  return _SessionsOverviewDataModel.fromJson(json);
}

/// @nodoc
class _$SessionsOverviewDataModelTearOff {
  const _$SessionsOverviewDataModelTearOff();

  _SessionsOverviewDataModel call(
      {required List<SessionOverviewDataModel> sessions}) {
    return _SessionsOverviewDataModel(
      sessions: sessions,
    );
  }

  SessionsOverviewDataModel fromJson(Map<String, Object> json) {
    return SessionsOverviewDataModel.fromJson(json);
  }
}

/// @nodoc
const $SessionsOverviewDataModel = _$SessionsOverviewDataModelTearOff();

/// @nodoc
mixin _$SessionsOverviewDataModel {
  List<SessionOverviewDataModel> get sessions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionsOverviewDataModelCopyWith<SessionsOverviewDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsOverviewDataModelCopyWith<$Res> {
  factory $SessionsOverviewDataModelCopyWith(SessionsOverviewDataModel value,
          $Res Function(SessionsOverviewDataModel) then) =
      _$SessionsOverviewDataModelCopyWithImpl<$Res>;
  $Res call({List<SessionOverviewDataModel> sessions});
}

/// @nodoc
class _$SessionsOverviewDataModelCopyWithImpl<$Res>
    implements $SessionsOverviewDataModelCopyWith<$Res> {
  _$SessionsOverviewDataModelCopyWithImpl(this._value, this._then);

  final SessionsOverviewDataModel _value;
  // ignore: unused_field
  final $Res Function(SessionsOverviewDataModel) _then;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionOverviewDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$SessionsOverviewDataModelCopyWith<$Res>
    implements $SessionsOverviewDataModelCopyWith<$Res> {
  factory _$SessionsOverviewDataModelCopyWith(_SessionsOverviewDataModel value,
          $Res Function(_SessionsOverviewDataModel) then) =
      __$SessionsOverviewDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SessionOverviewDataModel> sessions});
}

/// @nodoc
class __$SessionsOverviewDataModelCopyWithImpl<$Res>
    extends _$SessionsOverviewDataModelCopyWithImpl<$Res>
    implements _$SessionsOverviewDataModelCopyWith<$Res> {
  __$SessionsOverviewDataModelCopyWithImpl(_SessionsOverviewDataModel _value,
      $Res Function(_SessionsOverviewDataModel) _then)
      : super(_value, (v) => _then(v as _SessionsOverviewDataModel));

  @override
  _SessionsOverviewDataModel get _value =>
      super._value as _SessionsOverviewDataModel;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_SessionsOverviewDataModel(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionOverviewDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionsOverviewDataModel implements _SessionsOverviewDataModel {
  _$_SessionsOverviewDataModel({required this.sessions});

  factory _$_SessionsOverviewDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionsOverviewDataModelFromJson(json);

  @override
  final List<SessionOverviewDataModel> sessions;

  @override
  String toString() {
    return 'SessionsOverviewDataModel(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionsOverviewDataModel &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessions);

  @JsonKey(ignore: true)
  @override
  _$SessionsOverviewDataModelCopyWith<_SessionsOverviewDataModel>
      get copyWith =>
          __$SessionsOverviewDataModelCopyWithImpl<_SessionsOverviewDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionsOverviewDataModelToJson(this);
  }
}

abstract class _SessionsOverviewDataModel implements SessionsOverviewDataModel {
  factory _SessionsOverviewDataModel(
          {required List<SessionOverviewDataModel> sessions}) =
      _$_SessionsOverviewDataModel;

  factory _SessionsOverviewDataModel.fromJson(Map<String, dynamic> json) =
      _$_SessionsOverviewDataModel.fromJson;

  @override
  List<SessionOverviewDataModel> get sessions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionsOverviewDataModelCopyWith<_SessionsOverviewDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
