// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskStateModelTearOff {
  const _$TaskStateModelTearOff();

  _TaskStateModel call(
      {required String title, String? description, String? jiraLink}) {
    return _TaskStateModel(
      title: title,
      description: description,
      jiraLink: jiraLink,
    );
  }
}

/// @nodoc
const $TaskStateModel = _$TaskStateModelTearOff();

/// @nodoc
mixin _$TaskStateModel {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get jiraLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateModelCopyWith<TaskStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateModelCopyWith<$Res> {
  factory $TaskStateModelCopyWith(
          TaskStateModel value, $Res Function(TaskStateModel) then) =
      _$TaskStateModelCopyWithImpl<$Res>;
  $Res call({String title, String? description, String? jiraLink});
}

/// @nodoc
class _$TaskStateModelCopyWithImpl<$Res>
    implements $TaskStateModelCopyWith<$Res> {
  _$TaskStateModelCopyWithImpl(this._value, this._then);

  final TaskStateModel _value;
  // ignore: unused_field
  final $Res Function(TaskStateModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? jiraLink = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jiraLink: jiraLink == freezed
          ? _value.jiraLink
          : jiraLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TaskStateModelCopyWith<$Res>
    implements $TaskStateModelCopyWith<$Res> {
  factory _$TaskStateModelCopyWith(
          _TaskStateModel value, $Res Function(_TaskStateModel) then) =
      __$TaskStateModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String? description, String? jiraLink});
}

/// @nodoc
class __$TaskStateModelCopyWithImpl<$Res>
    extends _$TaskStateModelCopyWithImpl<$Res>
    implements _$TaskStateModelCopyWith<$Res> {
  __$TaskStateModelCopyWithImpl(
      _TaskStateModel _value, $Res Function(_TaskStateModel) _then)
      : super(_value, (v) => _then(v as _TaskStateModel));

  @override
  _TaskStateModel get _value => super._value as _TaskStateModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? jiraLink = freezed,
  }) {
    return _then(_TaskStateModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jiraLink: jiraLink == freezed
          ? _value.jiraLink
          : jiraLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TaskStateModel implements _TaskStateModel {
  _$_TaskStateModel({required this.title, this.description, this.jiraLink});

  @override
  final String title;
  @override
  final String? description;
  @override
  final String? jiraLink;

  @override
  String toString() {
    return 'TaskStateModel(title: $title, description: $description, jiraLink: $jiraLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskStateModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.jiraLink, jiraLink) ||
                const DeepCollectionEquality()
                    .equals(other.jiraLink, jiraLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(jiraLink);

  @JsonKey(ignore: true)
  @override
  _$TaskStateModelCopyWith<_TaskStateModel> get copyWith =>
      __$TaskStateModelCopyWithImpl<_TaskStateModel>(this, _$identity);
}

abstract class _TaskStateModel implements TaskStateModel {
  factory _TaskStateModel(
      {required String title,
      String? description,
      String? jiraLink}) = _$_TaskStateModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get jiraLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskStateModelCopyWith<_TaskStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
