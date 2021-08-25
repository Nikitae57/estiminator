// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'estimation_scale_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EstimationScaleDomainModelTearOff {
  const _$EstimationScaleDomainModelTearOff();

  _EstimationScaleDomainModel call(
      {required String name, required List<String> values}) {
    return _EstimationScaleDomainModel(
      name: name,
      values: values,
    );
  }
}

/// @nodoc
const $EstimationScaleDomainModel = _$EstimationScaleDomainModelTearOff();

/// @nodoc
mixin _$EstimationScaleDomainModel {
  String get name => throw _privateConstructorUsedError;
  List<String> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EstimationScaleDomainModelCopyWith<EstimationScaleDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimationScaleDomainModelCopyWith<$Res> {
  factory $EstimationScaleDomainModelCopyWith(EstimationScaleDomainModel value,
          $Res Function(EstimationScaleDomainModel) then) =
      _$EstimationScaleDomainModelCopyWithImpl<$Res>;
  $Res call({String name, List<String> values});
}

/// @nodoc
class _$EstimationScaleDomainModelCopyWithImpl<$Res>
    implements $EstimationScaleDomainModelCopyWith<$Res> {
  _$EstimationScaleDomainModelCopyWithImpl(this._value, this._then);

  final EstimationScaleDomainModel _value;
  // ignore: unused_field
  final $Res Function(EstimationScaleDomainModel) _then;

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
abstract class _$EstimationScaleDomainModelCopyWith<$Res>
    implements $EstimationScaleDomainModelCopyWith<$Res> {
  factory _$EstimationScaleDomainModelCopyWith(
          _EstimationScaleDomainModel value,
          $Res Function(_EstimationScaleDomainModel) then) =
      __$EstimationScaleDomainModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> values});
}

/// @nodoc
class __$EstimationScaleDomainModelCopyWithImpl<$Res>
    extends _$EstimationScaleDomainModelCopyWithImpl<$Res>
    implements _$EstimationScaleDomainModelCopyWith<$Res> {
  __$EstimationScaleDomainModelCopyWithImpl(_EstimationScaleDomainModel _value,
      $Res Function(_EstimationScaleDomainModel) _then)
      : super(_value, (v) => _then(v as _EstimationScaleDomainModel));

  @override
  _EstimationScaleDomainModel get _value =>
      super._value as _EstimationScaleDomainModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? values = freezed,
  }) {
    return _then(_EstimationScaleDomainModel(
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

class _$_EstimationScaleDomainModel implements _EstimationScaleDomainModel {
  const _$_EstimationScaleDomainModel(
      {required this.name, required this.values});

  @override
  final String name;
  @override
  final List<String> values;

  @override
  String toString() {
    return 'EstimationScaleDomainModel(name: $name, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstimationScaleDomainModel &&
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
  _$EstimationScaleDomainModelCopyWith<_EstimationScaleDomainModel>
      get copyWith => __$EstimationScaleDomainModelCopyWithImpl<
          _EstimationScaleDomainModel>(this, _$identity);
}

abstract class _EstimationScaleDomainModel
    implements EstimationScaleDomainModel {
  const factory _EstimationScaleDomainModel(
      {required String name,
      required List<String> values}) = _$_EstimationScaleDomainModel;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EstimationScaleDomainModelCopyWith<_EstimationScaleDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
