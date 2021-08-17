// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_scales_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EstimationScalesDomainModelTearOff {
  const _$EstimationScalesDomainModelTearOff();

  _EstimationScalesDomainModel call(
      {required List<EstimationScaleDomainModel> scales}) {
    return _EstimationScalesDomainModel(
      scales: scales,
    );
  }
}

/// @nodoc
const $EstimationScalesDomainModel = _$EstimationScalesDomainModelTearOff();

/// @nodoc
mixin _$EstimationScalesDomainModel {
  List<EstimationScaleDomainModel> get scales =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EstimationScalesDomainModelCopyWith<EstimationScalesDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationScalesDomainModelCopyWith<$Res> {
  factory $EstimationScalesDomainModelCopyWith(
          EstimationScalesDomainModel value,
          $Res Function(EstimationScalesDomainModel) then) =
      _$EstimationScalesDomainModelCopyWithImpl<$Res>;
  $Res call({List<EstimationScaleDomainModel> scales});
}

/// @nodoc
class _$EstimationScalesDomainModelCopyWithImpl<$Res>
    implements $EstimationScalesDomainModelCopyWith<$Res> {
  _$EstimationScalesDomainModelCopyWithImpl(this._value, this._then);

  final EstimationScalesDomainModel _value;
  // ignore: unused_field
  final $Res Function(EstimationScalesDomainModel) _then;

  @override
  $Res call({
    Object? scales = freezed,
  }) {
    return _then(_value.copyWith(
      scales: scales == freezed
          ? _value.scales
          : scales // ignore: cast_nullable_to_non_nullable
              as List<EstimationScaleDomainModel>,
    ));
  }
}

/// @nodoc
abstract class _$EstimationScalesDomainModelCopyWith<$Res>
    implements $EstimationScalesDomainModelCopyWith<$Res> {
  factory _$EstimationScalesDomainModelCopyWith(
          _EstimationScalesDomainModel value,
          $Res Function(_EstimationScalesDomainModel) then) =
      __$EstimationScalesDomainModelCopyWithImpl<$Res>;
  @override
  $Res call({List<EstimationScaleDomainModel> scales});
}

/// @nodoc
class __$EstimationScalesDomainModelCopyWithImpl<$Res>
    extends _$EstimationScalesDomainModelCopyWithImpl<$Res>
    implements _$EstimationScalesDomainModelCopyWith<$Res> {
  __$EstimationScalesDomainModelCopyWithImpl(
      _EstimationScalesDomainModel _value,
      $Res Function(_EstimationScalesDomainModel) _then)
      : super(_value, (v) => _then(v as _EstimationScalesDomainModel));

  @override
  _EstimationScalesDomainModel get _value =>
      super._value as _EstimationScalesDomainModel;

  @override
  $Res call({
    Object? scales = freezed,
  }) {
    return _then(_EstimationScalesDomainModel(
      scales: scales == freezed
          ? _value.scales
          : scales // ignore: cast_nullable_to_non_nullable
              as List<EstimationScaleDomainModel>,
    ));
  }
}

/// @nodoc

class _$_EstimationScalesDomainModel implements _EstimationScalesDomainModel {
  _$_EstimationScalesDomainModel({required this.scales});

  @override
  final List<EstimationScaleDomainModel> scales;

  @override
  String toString() {
    return 'EstimationScalesDomainModel(scales: $scales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationScalesDomainModel &&
            (identical(other.scales, scales) ||
                const DeepCollectionEquality().equals(other.scales, scales)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scales);

  @JsonKey(ignore: true)
  @override
  _$EstimationScalesDomainModelCopyWith<_EstimationScalesDomainModel>
      get copyWith => __$EstimationScalesDomainModelCopyWithImpl<
          _EstimationScalesDomainModel>(this, _$identity);
}

abstract class _EstimationScalesDomainModel
    implements EstimationScalesDomainModel {
  factory _EstimationScalesDomainModel(
          {required List<EstimationScaleDomainModel> scales}) =
      _$_EstimationScalesDomainModel;

  @override
  List<EstimationScaleDomainModel> get scales =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationScalesDomainModelCopyWith<_EstimationScalesDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
