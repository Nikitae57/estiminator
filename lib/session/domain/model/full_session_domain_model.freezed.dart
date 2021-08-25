// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'full_session_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FullSessionDomainModelTearOff {
  const _$FullSessionDomainModelTearOff();

  _FullSessionDomainModel call(
      {required SessionDomainModel session,
      required EstimationScaleDomainModel estimationScale}) {
    return _FullSessionDomainModel(
      session: session,
      estimationScale: estimationScale,
    );
  }
}

/// @nodoc
const $FullSessionDomainModel = _$FullSessionDomainModelTearOff();

/// @nodoc
mixin _$FullSessionDomainModel {
  SessionDomainModel get session => throw _privateConstructorUsedError;
  EstimationScaleDomainModel get estimationScale =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FullSessionDomainModelCopyWith<FullSessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullSessionDomainModelCopyWith<$Res> {
  factory $FullSessionDomainModelCopyWith(FullSessionDomainModel value,
          $Res Function(FullSessionDomainModel) then) =
      _$FullSessionDomainModelCopyWithImpl<$Res>;
  $Res call(
      {SessionDomainModel session, EstimationScaleDomainModel estimationScale});

  $SessionDomainModelCopyWith<$Res> get session;
  $EstimationScaleDomainModelCopyWith<$Res> get estimationScale;
}

/// @nodoc
class _$FullSessionDomainModelCopyWithImpl<$Res>
    implements $FullSessionDomainModelCopyWith<$Res> {
  _$FullSessionDomainModelCopyWithImpl(this._value, this._then);

  final FullSessionDomainModel _value;
  // ignore: unused_field
  final $Res Function(FullSessionDomainModel) _then;

  @override
  $Res call({
    Object? session = freezed,
    Object? estimationScale = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionDomainModel,
      estimationScale: estimationScale == freezed
          ? _value.estimationScale
          : estimationScale // ignore: cast_nullable_to_non_nullable
              as EstimationScaleDomainModel,
    ));
  }

  @override
  $SessionDomainModelCopyWith<$Res> get session {
    return $SessionDomainModelCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }

  @override
  $EstimationScaleDomainModelCopyWith<$Res> get estimationScale {
    return $EstimationScaleDomainModelCopyWith<$Res>(_value.estimationScale,
        (value) {
      return _then(_value.copyWith(estimationScale: value));
    });
  }
}

/// @nodoc
abstract class _$FullSessionDomainModelCopyWith<$Res>
    implements $FullSessionDomainModelCopyWith<$Res> {
  factory _$FullSessionDomainModelCopyWith(_FullSessionDomainModel value,
          $Res Function(_FullSessionDomainModel) then) =
      __$FullSessionDomainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {SessionDomainModel session, EstimationScaleDomainModel estimationScale});

  @override
  $SessionDomainModelCopyWith<$Res> get session;
  @override
  $EstimationScaleDomainModelCopyWith<$Res> get estimationScale;
}

/// @nodoc
class __$FullSessionDomainModelCopyWithImpl<$Res>
    extends _$FullSessionDomainModelCopyWithImpl<$Res>
    implements _$FullSessionDomainModelCopyWith<$Res> {
  __$FullSessionDomainModelCopyWithImpl(_FullSessionDomainModel _value,
      $Res Function(_FullSessionDomainModel) _then)
      : super(_value, (v) => _then(v as _FullSessionDomainModel));

  @override
  _FullSessionDomainModel get _value => super._value as _FullSessionDomainModel;

  @override
  $Res call({
    Object? session = freezed,
    Object? estimationScale = freezed,
  }) {
    return _then(_FullSessionDomainModel(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionDomainModel,
      estimationScale: estimationScale == freezed
          ? _value.estimationScale
          : estimationScale // ignore: cast_nullable_to_non_nullable
              as EstimationScaleDomainModel,
    ));
  }
}

/// @nodoc

class _$_FullSessionDomainModel implements _FullSessionDomainModel {
  const _$_FullSessionDomainModel(
      {required this.session, required this.estimationScale});

  @override
  final SessionDomainModel session;
  @override
  final EstimationScaleDomainModel estimationScale;

  @override
  String toString() {
    return 'FullSessionDomainModel(session: $session, estimationScale: $estimationScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullSessionDomainModel &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.estimationScale, estimationScale) ||
                const DeepCollectionEquality()
                    .equals(other.estimationScale, estimationScale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(estimationScale);

  @JsonKey(ignore: true)
  @override
  _$FullSessionDomainModelCopyWith<_FullSessionDomainModel> get copyWith =>
      __$FullSessionDomainModelCopyWithImpl<_FullSessionDomainModel>(
          this, _$identity);
}

abstract class _FullSessionDomainModel implements FullSessionDomainModel {
  const factory _FullSessionDomainModel(
          {required SessionDomainModel session,
          required EstimationScaleDomainModel estimationScale}) =
      _$_FullSessionDomainModel;

  @override
  SessionDomainModel get session => throw _privateConstructorUsedError;
  @override
  EstimationScaleDomainModel get estimationScale =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FullSessionDomainModelCopyWith<_FullSessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
