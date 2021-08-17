// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_scales_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstimationScalesDataModel _$EstimationScalesDataModelFromJson(
    Map<String, dynamic> json) {
  return _EstimationScalesDataModel.fromJson(json);
}

/// @nodoc
class _$EstimationScalesDataModelTearOff {
  const _$EstimationScalesDataModelTearOff();

  _EstimationScalesDataModel call(
      {required List<EstimationScaleDataModel> scales}) {
    return _EstimationScalesDataModel(
      scales: scales,
    );
  }

  EstimationScalesDataModel fromJson(Map<String, Object> json) {
    return EstimationScalesDataModel.fromJson(json);
  }
}

/// @nodoc
const $EstimationScalesDataModel = _$EstimationScalesDataModelTearOff();

/// @nodoc
mixin _$EstimationScalesDataModel {
  List<EstimationScaleDataModel> get scales =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimationScalesDataModelCopyWith<EstimationScalesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationScalesDataModelCopyWith<$Res> {
  factory $EstimationScalesDataModelCopyWith(EstimationScalesDataModel value,
          $Res Function(EstimationScalesDataModel) then) =
      _$EstimationScalesDataModelCopyWithImpl<$Res>;
  $Res call({List<EstimationScaleDataModel> scales});
}

/// @nodoc
class _$EstimationScalesDataModelCopyWithImpl<$Res>
    implements $EstimationScalesDataModelCopyWith<$Res> {
  _$EstimationScalesDataModelCopyWithImpl(this._value, this._then);

  final EstimationScalesDataModel _value;
  // ignore: unused_field
  final $Res Function(EstimationScalesDataModel) _then;

  @override
  $Res call({
    Object? scales = freezed,
  }) {
    return _then(_value.copyWith(
      scales: scales == freezed
          ? _value.scales
          : scales // ignore: cast_nullable_to_non_nullable
              as List<EstimationScaleDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$EstimationScalesDataModelCopyWith<$Res>
    implements $EstimationScalesDataModelCopyWith<$Res> {
  factory _$EstimationScalesDataModelCopyWith(_EstimationScalesDataModel value,
          $Res Function(_EstimationScalesDataModel) then) =
      __$EstimationScalesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<EstimationScaleDataModel> scales});
}

/// @nodoc
class __$EstimationScalesDataModelCopyWithImpl<$Res>
    extends _$EstimationScalesDataModelCopyWithImpl<$Res>
    implements _$EstimationScalesDataModelCopyWith<$Res> {
  __$EstimationScalesDataModelCopyWithImpl(_EstimationScalesDataModel _value,
      $Res Function(_EstimationScalesDataModel) _then)
      : super(_value, (v) => _then(v as _EstimationScalesDataModel));

  @override
  _EstimationScalesDataModel get _value =>
      super._value as _EstimationScalesDataModel;

  @override
  $Res call({
    Object? scales = freezed,
  }) {
    return _then(_EstimationScalesDataModel(
      scales: scales == freezed
          ? _value.scales
          : scales // ignore: cast_nullable_to_non_nullable
              as List<EstimationScaleDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstimationScalesDataModel implements _EstimationScalesDataModel {
  _$_EstimationScalesDataModel({required this.scales});

  factory _$_EstimationScalesDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EstimationScalesDataModelFromJson(json);

  @override
  final List<EstimationScaleDataModel> scales;

  @override
  String toString() {
    return 'EstimationScalesDataModel(scales: $scales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationScalesDataModel &&
            (identical(other.scales, scales) ||
                const DeepCollectionEquality().equals(other.scales, scales)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scales);

  @JsonKey(ignore: true)
  @override
  _$EstimationScalesDataModelCopyWith<_EstimationScalesDataModel>
      get copyWith =>
          __$EstimationScalesDataModelCopyWithImpl<_EstimationScalesDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstimationScalesDataModelToJson(this);
  }
}

abstract class _EstimationScalesDataModel implements EstimationScalesDataModel {
  factory _EstimationScalesDataModel(
          {required List<EstimationScaleDataModel> scales}) =
      _$_EstimationScalesDataModel;

  factory _EstimationScalesDataModel.fromJson(Map<String, dynamic> json) =
      _$_EstimationScalesDataModel.fromJson;

  @override
  List<EstimationScaleDataModel> get scales =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationScalesDataModelCopyWith<_EstimationScalesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
