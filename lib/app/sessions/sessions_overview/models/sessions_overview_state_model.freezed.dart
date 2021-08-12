// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessions_overview_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionsOverviewStateModelTearOff {
  const _$SessionsOverviewStateModelTearOff();

  _SessionsOverviewStateModel call(
      {required List<SessionOverviewStateModel> sessions}) {
    return _SessionsOverviewStateModel(
      sessions: sessions,
    );
  }
}

/// @nodoc
const $SessionsOverviewStateModel = _$SessionsOverviewStateModelTearOff();

/// @nodoc
mixin _$SessionsOverviewStateModel {
  List<SessionOverviewStateModel> get sessions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsOverviewStateModelCopyWith<SessionsOverviewStateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsOverviewStateModelCopyWith<$Res> {
  factory $SessionsOverviewStateModelCopyWith(SessionsOverviewStateModel value,
          $Res Function(SessionsOverviewStateModel) then) =
      _$SessionsOverviewStateModelCopyWithImpl<$Res>;
  $Res call({List<SessionOverviewStateModel> sessions});
}

/// @nodoc
class _$SessionsOverviewStateModelCopyWithImpl<$Res>
    implements $SessionsOverviewStateModelCopyWith<$Res> {
  _$SessionsOverviewStateModelCopyWithImpl(this._value, this._then);

  final SessionsOverviewStateModel _value;
  // ignore: unused_field
  final $Res Function(SessionsOverviewStateModel) _then;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionOverviewStateModel>,
    ));
  }
}

/// @nodoc
abstract class _$SessionsOverviewStateModelCopyWith<$Res>
    implements $SessionsOverviewStateModelCopyWith<$Res> {
  factory _$SessionsOverviewStateModelCopyWith(
          _SessionsOverviewStateModel value,
          $Res Function(_SessionsOverviewStateModel) then) =
      __$SessionsOverviewStateModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SessionOverviewStateModel> sessions});
}

/// @nodoc
class __$SessionsOverviewStateModelCopyWithImpl<$Res>
    extends _$SessionsOverviewStateModelCopyWithImpl<$Res>
    implements _$SessionsOverviewStateModelCopyWith<$Res> {
  __$SessionsOverviewStateModelCopyWithImpl(_SessionsOverviewStateModel _value,
      $Res Function(_SessionsOverviewStateModel) _then)
      : super(_value, (v) => _then(v as _SessionsOverviewStateModel));

  @override
  _SessionsOverviewStateModel get _value =>
      super._value as _SessionsOverviewStateModel;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_SessionsOverviewStateModel(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionOverviewStateModel>,
    ));
  }
}

/// @nodoc

class _$_SessionsOverviewStateModel implements _SessionsOverviewStateModel {
  _$_SessionsOverviewStateModel({required this.sessions});

  @override
  final List<SessionOverviewStateModel> sessions;

  @override
  String toString() {
    return 'SessionsOverviewStateModel(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionsOverviewStateModel &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessions);

  @JsonKey(ignore: true)
  @override
  _$SessionsOverviewStateModelCopyWith<_SessionsOverviewStateModel>
      get copyWith => __$SessionsOverviewStateModelCopyWithImpl<
          _SessionsOverviewStateModel>(this, _$identity);
}

abstract class _SessionsOverviewStateModel
    implements SessionsOverviewStateModel {
  factory _SessionsOverviewStateModel(
          {required List<SessionOverviewStateModel> sessions}) =
      _$_SessionsOverviewStateModel;

  @override
  List<SessionOverviewStateModel> get sessions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionsOverviewStateModelCopyWith<_SessionsOverviewStateModel>
      get copyWith => throw _privateConstructorUsedError;
}
