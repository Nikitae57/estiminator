// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionDataModelTearOff {
  const _$SessionDataModelTearOff();

  _SessionDataModel call(
      {required String id, required Map<String, dynamic> json}) {
    return _SessionDataModel(
      id: id,
      json: json,
    );
  }
}

/// @nodoc
const $SessionDataModel = _$SessionDataModelTearOff();

/// @nodoc
mixin _$SessionDataModel {
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get json => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionDataModelCopyWith<SessionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataModelCopyWith<$Res> {
  factory $SessionDataModelCopyWith(
          SessionDataModel value, $Res Function(SessionDataModel) then) =
      _$SessionDataModelCopyWithImpl<$Res>;
  $Res call({String id, Map<String, dynamic> json});
}

/// @nodoc
class _$SessionDataModelCopyWithImpl<$Res>
    implements $SessionDataModelCopyWith<$Res> {
  _$SessionDataModelCopyWithImpl(this._value, this._then);

  final SessionDataModel _value;
  // ignore: unused_field
  final $Res Function(SessionDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? json = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      json: json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$SessionDataModelCopyWith<$Res>
    implements $SessionDataModelCopyWith<$Res> {
  factory _$SessionDataModelCopyWith(
          _SessionDataModel value, $Res Function(_SessionDataModel) then) =
      __$SessionDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, Map<String, dynamic> json});
}

/// @nodoc
class __$SessionDataModelCopyWithImpl<$Res>
    extends _$SessionDataModelCopyWithImpl<$Res>
    implements _$SessionDataModelCopyWith<$Res> {
  __$SessionDataModelCopyWithImpl(
      _SessionDataModel _value, $Res Function(_SessionDataModel) _then)
      : super(_value, (v) => _then(v as _SessionDataModel));

  @override
  _SessionDataModel get _value => super._value as _SessionDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? json = freezed,
  }) {
    return _then(_SessionDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      json: json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_SessionDataModel implements _SessionDataModel {
  const _$_SessionDataModel({required this.id, required this.json});

  @override
  final String id;
  @override
  final Map<String, dynamic> json;

  @override
  String toString() {
    return 'SessionDataModel(id: $id, json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.json, json) ||
                const DeepCollectionEquality().equals(other.json, json)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(json);

  @JsonKey(ignore: true)
  @override
  _$SessionDataModelCopyWith<_SessionDataModel> get copyWith =>
      __$SessionDataModelCopyWithImpl<_SessionDataModel>(this, _$identity);
}

abstract class _SessionDataModel implements SessionDataModel {
  const factory _SessionDataModel(
      {required String id,
      required Map<String, dynamic> json}) = _$_SessionDataModel;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get json => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDataModelCopyWith<_SessionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
