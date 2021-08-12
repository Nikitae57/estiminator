// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_scale_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EstimationScaleDataModel _$EstimationScaleDataModelFromJson(
    Map<String, dynamic> json) {
  return _EstimationScaleDataModel.fromJson(json);
}

/// @nodoc
class _$EstimationScaleDataModelTearOff {
  const _$EstimationScaleDataModelTearOff();

  _EstimationScaleDataModel call(
      {required String name, required List<String> values}) {
    return _EstimationScaleDataModel(
      name: name,
      values: values,
    );
  }

  EstimationScaleDataModel fromJson(Map<String, Object> json) {
    return EstimationScaleDataModel.fromJson(json);
  }
}

/// @nodoc
const $EstimationScaleDataModel = _$EstimationScaleDataModelTearOff();

/// @nodoc
mixin _$EstimationScaleDataModel {
  String get name => throw _privateConstructorUsedError;
  List<String> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimationScaleDataModelCopyWith<EstimationScaleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationScaleDataModelCopyWith<$Res> {
  factory $EstimationScaleDataModelCopyWith(EstimationScaleDataModel value,
          $Res Function(EstimationScaleDataModel) then) =
      _$EstimationScaleDataModelCopyWithImpl<$Res>;
  $Res call({String name, List<String> values});
}

/// @nodoc
class _$EstimationScaleDataModelCopyWithImpl<$Res>
    implements $EstimationScaleDataModelCopyWith<$Res> {
  _$EstimationScaleDataModelCopyWithImpl(this._value, this._then);

  final EstimationScaleDataModel _value;
  // ignore: unused_field
  final $Res Function(EstimationScaleDataModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$EstimationScaleDataModelCopyWith<$Res>
    implements $EstimationScaleDataModelCopyWith<$Res> {
  factory _$EstimationScaleDataModelCopyWith(_EstimationScaleDataModel value,
          $Res Function(_EstimationScaleDataModel) then) =
      __$EstimationScaleDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> values});
}

/// @nodoc
class __$EstimationScaleDataModelCopyWithImpl<$Res>
    extends _$EstimationScaleDataModelCopyWithImpl<$Res>
    implements _$EstimationScaleDataModelCopyWith<$Res> {
  __$EstimationScaleDataModelCopyWithImpl(_EstimationScaleDataModel _value,
      $Res Function(_EstimationScaleDataModel) _then)
      : super(_value, (v) => _then(v as _EstimationScaleDataModel));

  @override
  _EstimationScaleDataModel get _value =>
      super._value as _EstimationScaleDataModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
  }) {
    return _then(_EstimationScaleDataModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstimationScaleDataModel implements _EstimationScaleDataModel {
  _$_EstimationScaleDataModel({required this.name, required this.values});

  factory _$_EstimationScaleDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EstimationScaleDataModelFromJson(json);

  @override
  final String name;
  @override
  final List<String> values;

  @override
  String toString() {
    return 'EstimationScaleDataModel(name: $name, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationScaleDataModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$EstimationScaleDataModelCopyWith<_EstimationScaleDataModel> get copyWith =>
      __$EstimationScaleDataModelCopyWithImpl<_EstimationScaleDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EstimationScaleDataModelToJson(this);
  }
}

abstract class _EstimationScaleDataModel implements EstimationScaleDataModel {
  factory _EstimationScaleDataModel(
      {required String name,
      required List<String> values}) = _$_EstimationScaleDataModel;

  factory _EstimationScaleDataModel.fromJson(Map<String, dynamic> json) =
      _$_EstimationScaleDataModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationScaleDataModelCopyWith<_EstimationScaleDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
