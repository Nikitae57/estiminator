// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_session_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateSessionDomainModelTearOff {
  const _$CreateSessionDomainModelTearOff();

  _CreateSessionDomainModel call(
      {required String creatorUid,
      required String sessionTitle,
      required String scaleName,
      required List<CreateSessionTaskDomainModel> tasks}) {
    return _CreateSessionDomainModel(
      creatorUid: creatorUid,
      sessionTitle: sessionTitle,
      scaleName: scaleName,
      tasks: tasks,
    );
  }
}

/// @nodoc
const $CreateSessionDomainModel = _$CreateSessionDomainModelTearOff();

/// @nodoc
mixin _$CreateSessionDomainModel {
  String get creatorUid => throw _privateConstructorUsedError;
  String get sessionTitle => throw _privateConstructorUsedError;
  String get scaleName => throw _privateConstructorUsedError;
  List<CreateSessionTaskDomainModel> get tasks =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateSessionDomainModelCopyWith<CreateSessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSessionDomainModelCopyWith<$Res> {
  factory $CreateSessionDomainModelCopyWith(CreateSessionDomainModel value,
          $Res Function(CreateSessionDomainModel) then) =
      _$CreateSessionDomainModelCopyWithImpl<$Res>;
  $Res call(
      {String creatorUid,
      String sessionTitle,
      String scaleName,
      List<CreateSessionTaskDomainModel> tasks});
}

/// @nodoc
class _$CreateSessionDomainModelCopyWithImpl<$Res>
    implements $CreateSessionDomainModelCopyWith<$Res> {
  _$CreateSessionDomainModelCopyWithImpl(this._value, this._then);

  final CreateSessionDomainModel _value;
  // ignore: unused_field
  final $Res Function(CreateSessionDomainModel) _then;

  @override
  $Res call({
    Object? creatorUid = freezed,
    Object? sessionTitle = freezed,
    Object? scaleName = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
      sessionTitle: sessionTitle == freezed
          ? _value.sessionTitle
          : sessionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scaleName: scaleName == freezed
          ? _value.scaleName
          : scaleName // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<CreateSessionTaskDomainModel>,
    ));
  }
}

/// @nodoc
abstract class _$CreateSessionDomainModelCopyWith<$Res>
    implements $CreateSessionDomainModelCopyWith<$Res> {
  factory _$CreateSessionDomainModelCopyWith(_CreateSessionDomainModel value,
          $Res Function(_CreateSessionDomainModel) then) =
      __$CreateSessionDomainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String creatorUid,
      String sessionTitle,
      String scaleName,
      List<CreateSessionTaskDomainModel> tasks});
}

/// @nodoc
class __$CreateSessionDomainModelCopyWithImpl<$Res>
    extends _$CreateSessionDomainModelCopyWithImpl<$Res>
    implements _$CreateSessionDomainModelCopyWith<$Res> {
  __$CreateSessionDomainModelCopyWithImpl(_CreateSessionDomainModel _value,
      $Res Function(_CreateSessionDomainModel) _then)
      : super(_value, (v) => _then(v as _CreateSessionDomainModel));

  @override
  _CreateSessionDomainModel get _value =>
      super._value as _CreateSessionDomainModel;

  @override
  $Res call({
    Object? creatorUid = freezed,
    Object? sessionTitle = freezed,
    Object? scaleName = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_CreateSessionDomainModel(
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
      sessionTitle: sessionTitle == freezed
          ? _value.sessionTitle
          : sessionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      scaleName: scaleName == freezed
          ? _value.scaleName
          : scaleName // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<CreateSessionTaskDomainModel>,
    ));
  }
}

/// @nodoc

class _$_CreateSessionDomainModel implements _CreateSessionDomainModel {
  const _$_CreateSessionDomainModel(
      {required this.creatorUid,
      required this.sessionTitle,
      required this.scaleName,
      required this.tasks});

  @override
  final String creatorUid;
  @override
  final String sessionTitle;
  @override
  final String scaleName;
  @override
  final List<CreateSessionTaskDomainModel> tasks;

  @override
  String toString() {
    return 'CreateSessionDomainModel(creatorUid: $creatorUid, sessionTitle: $sessionTitle, scaleName: $scaleName, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateSessionDomainModel &&
            (identical(other.creatorUid, creatorUid) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUid, creatorUid)) &&
            (identical(other.sessionTitle, sessionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.sessionTitle, sessionTitle)) &&
            (identical(other.scaleName, scaleName) ||
                const DeepCollectionEquality()
                    .equals(other.scaleName, scaleName)) &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(creatorUid) ^
      const DeepCollectionEquality().hash(sessionTitle) ^
      const DeepCollectionEquality().hash(scaleName) ^
      const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$CreateSessionDomainModelCopyWith<_CreateSessionDomainModel> get copyWith =>
      __$CreateSessionDomainModelCopyWithImpl<_CreateSessionDomainModel>(
          this, _$identity);
}

abstract class _CreateSessionDomainModel implements CreateSessionDomainModel {
  const factory _CreateSessionDomainModel(
          {required String creatorUid,
          required String sessionTitle,
          required String scaleName,
          required List<CreateSessionTaskDomainModel> tasks}) =
      _$_CreateSessionDomainModel;

  @override
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  String get sessionTitle => throw _privateConstructorUsedError;
  @override
  String get scaleName => throw _privateConstructorUsedError;
  @override
  List<CreateSessionTaskDomainModel> get tasks =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateSessionDomainModelCopyWith<_CreateSessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
