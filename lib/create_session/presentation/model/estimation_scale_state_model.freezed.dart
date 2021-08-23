// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_scale_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EstimationScaleStateModelTearOff {
  const _$EstimationScaleStateModelTearOff();

  _EstimationScaleStateModel call(
      {required String name,
      required List<String> values,
      required IconData? iconData}) {
    return _EstimationScaleStateModel(
      name: name,
      values: values,
      iconData: iconData,
    );
  }
}

/// @nodoc
const $EstimationScaleStateModel = _$EstimationScaleStateModelTearOff();

/// @nodoc
mixin _$EstimationScaleStateModel {
  String get name => throw _privateConstructorUsedError;
  List<String> get values => throw _privateConstructorUsedError;
  IconData? get iconData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EstimationScaleStateModelCopyWith<EstimationScaleStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationScaleStateModelCopyWith<$Res> {
  factory $EstimationScaleStateModelCopyWith(EstimationScaleStateModel value,
          $Res Function(EstimationScaleStateModel) then) =
      _$EstimationScaleStateModelCopyWithImpl<$Res>;
  $Res call({String name, List<String> values, IconData? iconData});
}

/// @nodoc
class _$EstimationScaleStateModelCopyWithImpl<$Res>
    implements $EstimationScaleStateModelCopyWith<$Res> {
  _$EstimationScaleStateModelCopyWithImpl(this._value, this._then);

  final EstimationScaleStateModel _value;
  // ignore: unused_field
  final $Res Function(EstimationScaleStateModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
    Object? iconData = freezed,
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
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc
abstract class _$EstimationScaleStateModelCopyWith<$Res>
    implements $EstimationScaleStateModelCopyWith<$Res> {
  factory _$EstimationScaleStateModelCopyWith(_EstimationScaleStateModel value,
          $Res Function(_EstimationScaleStateModel) then) =
      __$EstimationScaleStateModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> values, IconData? iconData});
}

/// @nodoc
class __$EstimationScaleStateModelCopyWithImpl<$Res>
    extends _$EstimationScaleStateModelCopyWithImpl<$Res>
    implements _$EstimationScaleStateModelCopyWith<$Res> {
  __$EstimationScaleStateModelCopyWithImpl(_EstimationScaleStateModel _value,
      $Res Function(_EstimationScaleStateModel) _then)
      : super(_value, (v) => _then(v as _EstimationScaleStateModel));

  @override
  _EstimationScaleStateModel get _value =>
      super._value as _EstimationScaleStateModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_EstimationScaleStateModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$_EstimationScaleStateModel implements _EstimationScaleStateModel {
  _$_EstimationScaleStateModel(
      {required this.name, required this.values, required this.iconData});

  @override
  final String name;
  @override
  final List<String> values;
  @override
  final IconData? iconData;

  @override
  String toString() {
    return 'EstimationScaleStateModel(name: $name, values: $values, iconData: $iconData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationScaleStateModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.iconData, iconData) ||
                const DeepCollectionEquality()
                    .equals(other.iconData, iconData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(iconData);

  @JsonKey(ignore: true)
  @override
  _$EstimationScaleStateModelCopyWith<_EstimationScaleStateModel>
      get copyWith =>
          __$EstimationScaleStateModelCopyWithImpl<_EstimationScaleStateModel>(
              this, _$identity);
}

abstract class _EstimationScaleStateModel implements EstimationScaleStateModel {
  factory _EstimationScaleStateModel(
      {required String name,
      required List<String> values,
      required IconData? iconData}) = _$_EstimationScaleStateModel;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get values => throw _privateConstructorUsedError;
  @override
  IconData? get iconData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationScaleStateModelCopyWith<_EstimationScaleStateModel>
      get copyWith => throw _privateConstructorUsedError;
}
