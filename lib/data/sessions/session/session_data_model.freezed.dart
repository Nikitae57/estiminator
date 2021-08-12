// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDataModel _$SessionDataModelFromJson(Map<String, dynamic> json) {
  return _SessionDataModel.fromJson(json);
}

/// @nodoc
class _$SessionDataModelTearOff {
  const _$SessionDataModelTearOff();

  _SessionDataModel call(
      {required String id,
      required String title,
      @JsonKey(name: 'creator_uid')
          required String creatorUid,
      @JsonKey(name: 'is_finished')
          required bool isFinished,
      @JsonKey(name: 'current_task_index')
          int? currentTaskIndex,
      @JsonKey(name: 'estimation_scale')
          required EstimationScaleDataModel estimationScale,
      required List<TaskDataModel> tasks}) {
    return _SessionDataModel(
      id: id,
      title: title,
      creatorUid: creatorUid,
      isFinished: isFinished,
      currentTaskIndex: currentTaskIndex,
      estimationScale: estimationScale,
      tasks: tasks,
    );
  }

  SessionDataModel fromJson(Map<String, Object> json) {
    return SessionDataModel.fromJson(json);
  }
}

/// @nodoc
const $SessionDataModel = _$SessionDataModelTearOff();

/// @nodoc
mixin _$SessionDataModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_task_index')
  int? get currentTaskIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimation_scale')
  EstimationScaleDataModel get estimationScale =>
      throw _privateConstructorUsedError;
  List<TaskDataModel> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDataModelCopyWith<SessionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataModelCopyWith<$Res> {
  factory $SessionDataModelCopyWith(
          SessionDataModel value, $Res Function(SessionDataModel) then) =
      _$SessionDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'creator_uid')
          String creatorUid,
      @JsonKey(name: 'is_finished')
          bool isFinished,
      @JsonKey(name: 'current_task_index')
          int? currentTaskIndex,
      @JsonKey(name: 'estimation_scale')
          EstimationScaleDataModel estimationScale,
      List<TaskDataModel> tasks});

  $EstimationScaleDataModelCopyWith<$Res> get estimationScale;
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
    Object? title = freezed,
    Object? creatorUid = freezed,
    Object? isFinished = freezed,
    Object? currentTaskIndex = freezed,
    Object? estimationScale = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTaskIndex: currentTaskIndex == freezed
          ? _value.currentTaskIndex
          : currentTaskIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      estimationScale: estimationScale == freezed
          ? _value.estimationScale
          : estimationScale // ignore: cast_nullable_to_non_nullable
              as EstimationScaleDataModel,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDataModel>,
    ));
  }

  @override
  $EstimationScaleDataModelCopyWith<$Res> get estimationScale {
    return $EstimationScaleDataModelCopyWith<$Res>(_value.estimationScale,
        (value) {
      return _then(_value.copyWith(estimationScale: value));
    });
  }
}

/// @nodoc
abstract class _$SessionDataModelCopyWith<$Res>
    implements $SessionDataModelCopyWith<$Res> {
  factory _$SessionDataModelCopyWith(
          _SessionDataModel value, $Res Function(_SessionDataModel) then) =
      __$SessionDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'creator_uid')
          String creatorUid,
      @JsonKey(name: 'is_finished')
          bool isFinished,
      @JsonKey(name: 'current_task_index')
          int? currentTaskIndex,
      @JsonKey(name: 'estimation_scale')
          EstimationScaleDataModel estimationScale,
      List<TaskDataModel> tasks});

  @override
  $EstimationScaleDataModelCopyWith<$Res> get estimationScale;
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
    Object? title = freezed,
    Object? creatorUid = freezed,
    Object? isFinished = freezed,
    Object? currentTaskIndex = freezed,
    Object? estimationScale = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_SessionDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTaskIndex: currentTaskIndex == freezed
          ? _value.currentTaskIndex
          : currentTaskIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      estimationScale: estimationScale == freezed
          ? _value.estimationScale
          : estimationScale // ignore: cast_nullable_to_non_nullable
              as EstimationScaleDataModel,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionDataModel implements _SessionDataModel {
  _$_SessionDataModel(
      {required this.id,
      required this.title,
      @JsonKey(name: 'creator_uid') required this.creatorUid,
      @JsonKey(name: 'is_finished') required this.isFinished,
      @JsonKey(name: 'current_task_index') this.currentTaskIndex,
      @JsonKey(name: 'estimation_scale') required this.estimationScale,
      required this.tasks});

  factory _$_SessionDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionDataModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'creator_uid')
  final String creatorUid;
  @override
  @JsonKey(name: 'is_finished')
  final bool isFinished;
  @override
  @JsonKey(name: 'current_task_index')
  final int? currentTaskIndex;
  @override
  @JsonKey(name: 'estimation_scale')
  final EstimationScaleDataModel estimationScale;
  @override
  final List<TaskDataModel> tasks;

  @override
  String toString() {
    return 'SessionDataModel(id: $id, title: $title, creatorUid: $creatorUid, isFinished: $isFinished, currentTaskIndex: $currentTaskIndex, estimationScale: $estimationScale, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.creatorUid, creatorUid) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUid, creatorUid)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)) &&
            (identical(other.currentTaskIndex, currentTaskIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentTaskIndex, currentTaskIndex)) &&
            (identical(other.estimationScale, estimationScale) ||
                const DeepCollectionEquality()
                    .equals(other.estimationScale, estimationScale)) &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(creatorUid) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(currentTaskIndex) ^
      const DeepCollectionEquality().hash(estimationScale) ^
      const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$SessionDataModelCopyWith<_SessionDataModel> get copyWith =>
      __$SessionDataModelCopyWithImpl<_SessionDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionDataModelToJson(this);
  }
}

abstract class _SessionDataModel implements SessionDataModel {
  factory _SessionDataModel(
      {required String id,
      required String title,
      @JsonKey(name: 'creator_uid')
          required String creatorUid,
      @JsonKey(name: 'is_finished')
          required bool isFinished,
      @JsonKey(name: 'current_task_index')
          int? currentTaskIndex,
      @JsonKey(name: 'estimation_scale')
          required EstimationScaleDataModel estimationScale,
      required List<TaskDataModel> tasks}) = _$_SessionDataModel;

  factory _SessionDataModel.fromJson(Map<String, dynamic> json) =
      _$_SessionDataModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_task_index')
  int? get currentTaskIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estimation_scale')
  EstimationScaleDataModel get estimationScale =>
      throw _privateConstructorUsedError;
  @override
  List<TaskDataModel> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDataModelCopyWith<_SessionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
