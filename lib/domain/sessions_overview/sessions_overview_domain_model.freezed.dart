// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessions_overview_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionsOverviewDomainModelTearOff {
  const _$SessionsOverviewDomainModelTearOff();

  _SessionsOverviewDomainModel call(
      {required List<SessionOverviewDomainModel> sessions}) {
    return _SessionsOverviewDomainModel(
      sessions: sessions,
    );
  }
}

/// @nodoc
const $SessionsOverviewDomainModel = _$SessionsOverviewDomainModelTearOff();

/// @nodoc
mixin _$SessionsOverviewDomainModel {
  List<SessionOverviewDomainModel> get sessions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsOverviewDomainModelCopyWith<SessionsOverviewDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsOverviewDomainModelCopyWith<$Res> {
  factory $SessionsOverviewDomainModelCopyWith(
          SessionsOverviewDomainModel value,
          $Res Function(SessionsOverviewDomainModel) then) =
      _$SessionsOverviewDomainModelCopyWithImpl<$Res>;
  $Res call({List<SessionOverviewDomainModel> sessions});
}

/// @nodoc
class _$SessionsOverviewDomainModelCopyWithImpl<$Res>
    implements $SessionsOverviewDomainModelCopyWith<$Res> {
  _$SessionsOverviewDomainModelCopyWithImpl(this._value, this._then);

  final SessionsOverviewDomainModel _value;
  // ignore: unused_field
  final $Res Function(SessionsOverviewDomainModel) _then;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionOverviewDomainModel>,
    ));
  }
}

/// @nodoc
abstract class _$SessionsOverviewDomainModelCopyWith<$Res>
    implements $SessionsOverviewDomainModelCopyWith<$Res> {
  factory _$SessionsOverviewDomainModelCopyWith(
          _SessionsOverviewDomainModel value,
          $Res Function(_SessionsOverviewDomainModel) then) =
      __$SessionsOverviewDomainModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SessionOverviewDomainModel> sessions});
}

/// @nodoc
class __$SessionsOverviewDomainModelCopyWithImpl<$Res>
    extends _$SessionsOverviewDomainModelCopyWithImpl<$Res>
    implements _$SessionsOverviewDomainModelCopyWith<$Res> {
  __$SessionsOverviewDomainModelCopyWithImpl(
      _SessionsOverviewDomainModel _value,
      $Res Function(_SessionsOverviewDomainModel) _then)
      : super(_value, (v) => _then(v as _SessionsOverviewDomainModel));

  @override
  _SessionsOverviewDomainModel get _value =>
      super._value as _SessionsOverviewDomainModel;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_SessionsOverviewDomainModel(
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionOverviewDomainModel>,
    ));
  }
}

/// @nodoc

class _$_SessionsOverviewDomainModel implements _SessionsOverviewDomainModel {
  _$_SessionsOverviewDomainModel({required this.sessions});

  @override
  final List<SessionOverviewDomainModel> sessions;

  @override
  String toString() {
    return 'SessionsOverviewDomainModel(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionsOverviewDomainModel &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessions);

  @JsonKey(ignore: true)
  @override
  _$SessionsOverviewDomainModelCopyWith<_SessionsOverviewDomainModel>
      get copyWith => __$SessionsOverviewDomainModelCopyWithImpl<
          _SessionsOverviewDomainModel>(this, _$identity);
}

abstract class _SessionsOverviewDomainModel
    implements SessionsOverviewDomainModel {
  factory _SessionsOverviewDomainModel(
          {required List<SessionOverviewDomainModel> sessions}) =
      _$_SessionsOverviewDomainModel;

  @override
  List<SessionOverviewDomainModel> get sessions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionsOverviewDomainModelCopyWith<_SessionsOverviewDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
