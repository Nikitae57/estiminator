// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimations_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstimationsDataModel _$EstimationsDataModelFromJson(Map<String, dynamic> json) {
  return _EstimationsDataModel.fromJson(json);
}

/// @nodoc
class _$EstimationsDataModelTearOff {
  const _$EstimationsDataModelTearOff();

  _EstimationsDataModel call({required List<EstimationDataModel> estimations}) {
    return _EstimationsDataModel(
      estimations: estimations,
    );
  }

  EstimationsDataModel fromJson(Map<String, Object> json) {
    return EstimationsDataModel.fromJson(json);
  }
}

/// @nodoc
const $EstimationsDataModel = _$EstimationsDataModelTearOff();

/// @nodoc
mixin _$EstimationsDataModel {
  List<EstimationDataModel> get estimations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimationsDataModelCopyWith<EstimationsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationsDataModelCopyWith<$Res> {
  factory $EstimationsDataModelCopyWith(EstimationsDataModel value,
          $Res Function(EstimationsDataModel) then) =
      _$EstimationsDataModelCopyWithImpl<$Res>;
  $Res call({List<EstimationDataModel> estimations});
}

/// @nodoc
class _$EstimationsDataModelCopyWithImpl<$Res>
    implements $EstimationsDataModelCopyWith<$Res> {
  _$EstimationsDataModelCopyWithImpl(this._value, this._then);

  final EstimationsDataModel _value;
  // ignore: unused_field
  final $Res Function(EstimationsDataModel) _then;

  @override
  $Res call({
    Object? estimations = freezed,
  }) {
    return _then(_value.copyWith(
      estimations: estimations == freezed
          ? _value.estimations
          : estimations // ignore: cast_nullable_to_non_nullable
              as List<EstimationDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$EstimationsDataModelCopyWith<$Res>
    implements $EstimationsDataModelCopyWith<$Res> {
  factory _$EstimationsDataModelCopyWith(_EstimationsDataModel value,
          $Res Function(_EstimationsDataModel) then) =
      __$EstimationsDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<EstimationDataModel> estimations});
}

/// @nodoc
class __$EstimationsDataModelCopyWithImpl<$Res>
    extends _$EstimationsDataModelCopyWithImpl<$Res>
    implements _$EstimationsDataModelCopyWith<$Res> {
  __$EstimationsDataModelCopyWithImpl(
      _EstimationsDataModel _value, $Res Function(_EstimationsDataModel) _then)
      : super(_value, (v) => _then(v as _EstimationsDataModel));

  @override
  _EstimationsDataModel get _value => super._value as _EstimationsDataModel;

  @override
  $Res call({
    Object? estimations = freezed,
  }) {
    return _then(_EstimationsDataModel(
      estimations: estimations == freezed
          ? _value.estimations
          : estimations // ignore: cast_nullable_to_non_nullable
              as List<EstimationDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstimationsDataModel implements _EstimationsDataModel {
  _$_EstimationsDataModel({required this.estimations});

  factory _$_EstimationsDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EstimationsDataModelFromJson(json);

  @override
  final List<EstimationDataModel> estimations;

  @override
  String toString() {
    return 'EstimationsDataModel(estimations: $estimations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationsDataModel &&
            (identical(other.estimations, estimations) ||
                const DeepCollectionEquality()
                    .equals(other.estimations, estimations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(estimations);

  @JsonKey(ignore: true)
  @override
  _$EstimationsDataModelCopyWith<_EstimationsDataModel> get copyWith =>
      __$EstimationsDataModelCopyWithImpl<_EstimationsDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstimationsDataModelToJson(this);
  }
}

abstract class _EstimationsDataModel implements EstimationsDataModel {
  factory _EstimationsDataModel(
          {required List<EstimationDataModel> estimations}) =
      _$_EstimationsDataModel;

  factory _EstimationsDataModel.fromJson(Map<String, dynamic> json) =
      _$_EstimationsDataModel.fromJson;

  @override
  List<EstimationDataModel> get estimations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationsDataModelCopyWith<_EstimationsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
