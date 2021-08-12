// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstimationDataModel _$EstimationDataModelFromJson(Map<String, dynamic> json) {
  return _EstimationDataModel.fromJson(json);
}

/// @nodoc
class _$EstimationDataModelTearOff {
  const _$EstimationDataModelTearOff();

  _EstimationDataModel call(
      {@JsonKey(name: 'value') required String estimationValue,
      @JsonKey(name: 'creator_uid') required String creatorUid}) {
    return _EstimationDataModel(
      estimationValue: estimationValue,
      creatorUid: creatorUid,
    );
  }

  EstimationDataModel fromJson(Map<String, Object> json) {
    return EstimationDataModel.fromJson(json);
  }
}

/// @nodoc
const $EstimationDataModel = _$EstimationDataModelTearOff();

/// @nodoc
mixin _$EstimationDataModel {
  @JsonKey(name: 'value')
  String get estimationValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimationDataModelCopyWith<EstimationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationDataModelCopyWith<$Res> {
  factory $EstimationDataModelCopyWith(
          EstimationDataModel value, $Res Function(EstimationDataModel) then) =
      _$EstimationDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'value') String estimationValue,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class _$EstimationDataModelCopyWithImpl<$Res>
    implements $EstimationDataModelCopyWith<$Res> {
  _$EstimationDataModelCopyWithImpl(this._value, this._then);

  final EstimationDataModel _value;
  // ignore: unused_field
  final $Res Function(EstimationDataModel) _then;

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
abstract class _$EstimationDataModelCopyWith<$Res>
    implements $EstimationDataModelCopyWith<$Res> {
  factory _$EstimationDataModelCopyWith(_EstimationDataModel value,
          $Res Function(_EstimationDataModel) then) =
      __$EstimationDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'value') String estimationValue,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class __$EstimationDataModelCopyWithImpl<$Res>
    extends _$EstimationDataModelCopyWithImpl<$Res>
    implements _$EstimationDataModelCopyWith<$Res> {
  __$EstimationDataModelCopyWithImpl(
      _EstimationDataModel _value, $Res Function(_EstimationDataModel) _then)
      : super(_value, (v) => _then(v as _EstimationDataModel));

  @override
  _EstimationDataModel get _value => super._value as _EstimationDataModel;

  @override
  $Res call({
    Object? estimationValue = freezed,
    Object? creatorUid = freezed,
  }) {
    return _then(_EstimationDataModel(
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
@JsonSerializable()
class _$_EstimationDataModel implements _EstimationDataModel {
  _$_EstimationDataModel(
      {@JsonKey(name: 'value') required this.estimationValue,
      @JsonKey(name: 'creator_uid') required this.creatorUid});

  factory _$_EstimationDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EstimationDataModelFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String estimationValue;
  @override
  @JsonKey(name: 'creator_uid')
  final String creatorUid;

  @override
  String toString() {
    return 'EstimationDataModel(estimationValue: $estimationValue, creatorUid: $creatorUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationDataModel &&
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
  _$EstimationDataModelCopyWith<_EstimationDataModel> get copyWith =>
      __$EstimationDataModelCopyWithImpl<_EstimationDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstimationDataModelToJson(this);
  }
}

abstract class _EstimationDataModel implements EstimationDataModel {
  factory _EstimationDataModel(
          {@JsonKey(name: 'value') required String estimationValue,
          @JsonKey(name: 'creator_uid') required String creatorUid}) =
      _$_EstimationDataModel;

  factory _EstimationDataModel.fromJson(Map<String, dynamic> json) =
      _$_EstimationDataModel.fromJson;

  @override
  @JsonKey(name: 'value')
  String get estimationValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationDataModelCopyWith<_EstimationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
