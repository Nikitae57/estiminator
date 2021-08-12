// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EstimationDomainModelTearOff {
  const _$EstimationDomainModelTearOff();

  _EstimationDomainModel call(
      {@JsonKey(name: 'estimation_value') required String estimationValue,
      @JsonKey(name: 'creator_uid') required String creatorUid}) {
    return _EstimationDomainModel(
      estimationValue: estimationValue,
      creatorUid: creatorUid,
    );
  }
}

/// @nodoc
const $EstimationDomainModel = _$EstimationDomainModelTearOff();

/// @nodoc
mixin _$EstimationDomainModel {
  @JsonKey(name: 'estimation_value')
  String get estimationValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EstimationDomainModelCopyWith<EstimationDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationDomainModelCopyWith<$Res> {
  factory $EstimationDomainModelCopyWith(EstimationDomainModel value,
          $Res Function(EstimationDomainModel) then) =
      _$EstimationDomainModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'estimation_value') String estimationValue,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class _$EstimationDomainModelCopyWithImpl<$Res>
    implements $EstimationDomainModelCopyWith<$Res> {
  _$EstimationDomainModelCopyWithImpl(this._value, this._then);

  final EstimationDomainModel _value;
  // ignore: unused_field
  final $Res Function(EstimationDomainModel) _then;

  @override
  $Res call({
    Object? estimationValue = freezed,
    Object? creatorUid = freezed,
  }) {
    return _then(_value.copyWith(
      estimationValue: estimationValue == freezed
          ? _value.estimationValue
          : estimationValue // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EstimationDomainModelCopyWith<$Res>
    implements $EstimationDomainModelCopyWith<$Res> {
  factory _$EstimationDomainModelCopyWith(_EstimationDomainModel value,
          $Res Function(_EstimationDomainModel) then) =
      __$EstimationDomainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'estimation_value') String estimationValue,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class __$EstimationDomainModelCopyWithImpl<$Res>
    extends _$EstimationDomainModelCopyWithImpl<$Res>
    implements _$EstimationDomainModelCopyWith<$Res> {
  __$EstimationDomainModelCopyWithImpl(_EstimationDomainModel _value,
      $Res Function(_EstimationDomainModel) _then)
      : super(_value, (v) => _then(v as _EstimationDomainModel));

  @override
  _EstimationDomainModel get _value => super._value as _EstimationDomainModel;

  @override
  $Res call({
    Object? estimationValue = freezed,
    Object? creatorUid = freezed,
  }) {
    return _then(_EstimationDomainModel(
      estimationValue: estimationValue == freezed
          ? _value.estimationValue
          : estimationValue // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EstimationDomainModel implements _EstimationDomainModel {
  _$_EstimationDomainModel(
      {@JsonKey(name: 'estimation_value') required this.estimationValue,
      @JsonKey(name: 'creator_uid') required this.creatorUid});

  @override
  @JsonKey(name: 'estimation_value')
  final String estimationValue;
  @override
  @JsonKey(name: 'creator_uid')
  final String creatorUid;

  @override
  String toString() {
    return 'EstimationDomainModel(estimationValue: $estimationValue, creatorUid: $creatorUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationDomainModel &&
            (identical(other.estimationValue, estimationValue) ||
                const DeepCollectionEquality()
                    .equals(other.estimationValue, estimationValue)) &&
            (identical(other.creatorUid, creatorUid) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUid, creatorUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(estimationValue) ^
      const DeepCollectionEquality().hash(creatorUid);

  @JsonKey(ignore: true)
  @override
  _$EstimationDomainModelCopyWith<_EstimationDomainModel> get copyWith =>
      __$EstimationDomainModelCopyWithImpl<_EstimationDomainModel>(
          this, _$identity);
}

abstract class _EstimationDomainModel implements EstimationDomainModel {
  factory _EstimationDomainModel(
          {@JsonKey(name: 'estimation_value') required String estimationValue,
          @JsonKey(name: 'creator_uid') required String creatorUid}) =
      _$_EstimationDomainModel;

  @override
  @JsonKey(name: 'estimation_value')
  String get estimationValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationDomainModelCopyWith<_EstimationDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
