// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionDomainModelTearOff {
  const _$SessionDomainModelTearOff();

  _SessionDomainModel call(
      {required String id,
      required String title,
      @JsonKey(name: 'creator_uid')
          required String creatorUid,
      @JsonKey(name: 'current_task_index')
          required int? currentTaskIndex,
      @JsonKey(name: 'is_finished')
          required bool isFinished,
      @JsonKey(name: 'estimation_scale')
          required EstimationScaleDomainModel estimationScale,
      required List<TaskDomainModel> tasks}) {
    return _SessionDomainModel(
      id: id,
      title: title,
      creatorUid: creatorUid,
      currentTaskIndex: currentTaskIndex,
      isFinished: isFinished,
      estimationScale: estimationScale,
      tasks: tasks,
    );
  }
}

/// @nodoc
const $SessionDomainModel = _$SessionDomainModelTearOff();

/// @nodoc
mixin _$SessionDomainModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_task_index')
  int? get currentTaskIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimation_scale')
  EstimationScaleDomainModel get estimationScale =>
      throw _privateConstructorUsedError;
  List<TaskDomainModel> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionDomainModelCopyWith<SessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDomainModelCopyWith<$Res> {
  factory $SessionDomainModelCopyWith(
          SessionDomainModel value, $Res Function(SessionDomainModel) then) =
      _$SessionDomainModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'creator_uid')
          String creatorUid,
      @JsonKey(name: 'current_task_index')
          int? currentTaskIndex,
      @JsonKey(name: 'is_finished')
          bool isFinished,
      @JsonKey(name: 'estimation_scale')
          EstimationScaleDomainModel estimationScale,
      List<TaskDomainModel> tasks});

  $EstimationScaleDomainModelCopyWith<$Res> get estimationScale;
}

/// @nodoc
class _$SessionDomainModelCopyWithImpl<$Res>
    implements $SessionDomainModelCopyWith<$Res> {
  _$SessionDomainModelCopyWithImpl(this._value, this._then);

  final SessionDomainModel _value;
  // ignore: unused_field
  final $Res Function(SessionDomainModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? creatorUid = freezed,
    Object? currentTaskIndex = freezed,
    Object? isFinished = freezed,
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
      currentTaskIndex: currentTaskIndex == freezed
          ? _value.currentTaskIndex
          : currentTaskIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      estimationScale: estimationScale == freezed
          ? _value.estimationScale
          : estimationScale // ignore: cast_nullable_to_non_nullable
              as EstimationScaleDomainModel,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDomainModel>,
    ));
  }

  @override
  $EstimationScaleDomainModelCopyWith<$Res> get estimationScale {
    return $EstimationScaleDomainModelCopyWith<$Res>(_value.estimationScale,
        (value) {
      return _then(_value.copyWith(estimationScale: value));
    });
  }
}

/// @nodoc
abstract class _$SessionDomainModelCopyWith<$Res>
    implements $SessionDomainModelCopyWith<$Res> {
  factory _$SessionDomainModelCopyWith(
          _SessionDomainModel value, $Res Function(_SessionDomainModel) then) =
      __$SessionDomainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'creator_uid')
          String creatorUid,
      @JsonKey(name: 'current_task_index')
          int? currentTaskIndex,
      @JsonKey(name: 'is_finished')
          bool isFinished,
      @JsonKey(name: 'estimation_scale')
          EstimationScaleDomainModel estimationScale,
      List<TaskDomainModel> tasks});

  @override
  $EstimationScaleDomainModelCopyWith<$Res> get estimationScale;
}

/// @nodoc
class __$SessionDomainModelCopyWithImpl<$Res>
    extends _$SessionDomainModelCopyWithImpl<$Res>
    implements _$SessionDomainModelCopyWith<$Res> {
  __$SessionDomainModelCopyWithImpl(
      _SessionDomainModel _value, $Res Function(_SessionDomainModel) _then)
      : super(_value, (v) => _then(v as _SessionDomainModel));

  @override
  _SessionDomainModel get _value => super._value as _SessionDomainModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? creatorUid = freezed,
    Object? currentTaskIndex = freezed,
    Object? isFinished = freezed,
    Object? estimationScale = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_SessionDomainModel(
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
      currentTaskIndex: currentTaskIndex == freezed
          ? _value.currentTaskIndex
          : currentTaskIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      estimationScale: estimationScale == freezed
          ? _value.estimationScale
          : estimationScale // ignore: cast_nullable_to_non_nullable
              as EstimationScaleDomainModel,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDomainModel>,
    ));
  }
}

/// @nodoc

class _$_SessionDomainModel extends _SessionDomainModel {
  _$_SessionDomainModel(
      {required this.id,
      required this.title,
      @JsonKey(name: 'creator_uid') required this.creatorUid,
      @JsonKey(name: 'current_task_index') required this.currentTaskIndex,
      @JsonKey(name: 'is_finished') required this.isFinished,
      @JsonKey(name: 'estimation_scale') required this.estimationScale,
      required this.tasks})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'creator_uid')
  final String creatorUid;
  @override
  @JsonKey(name: 'current_task_index')
  final int? currentTaskIndex;
  @override
  @JsonKey(name: 'is_finished')
  final bool isFinished;
  @override
  @JsonKey(name: 'estimation_scale')
  final EstimationScaleDomainModel estimationScale;
  @override
  final List<TaskDomainModel> tasks;

  @override
  String toString() {
    return 'SessionDomainModel(id: $id, title: $title, creatorUid: $creatorUid, currentTaskIndex: $currentTaskIndex, isFinished: $isFinished, estimationScale: $estimationScale, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionDomainModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.creatorUid, creatorUid) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUid, creatorUid)) &&
            (identical(other.currentTaskIndex, currentTaskIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentTaskIndex, currentTaskIndex)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)) &&
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
      const DeepCollectionEquality().hash(currentTaskIndex) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(estimationScale) ^
      const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$SessionDomainModelCopyWith<_SessionDomainModel> get copyWith =>
      __$SessionDomainModelCopyWithImpl<_SessionDomainModel>(this, _$identity);
}

abstract class _SessionDomainModel extends SessionDomainModel {
  factory _SessionDomainModel(
      {required String id,
      required String title,
      @JsonKey(name: 'creator_uid')
          required String creatorUid,
      @JsonKey(name: 'current_task_index')
          required int? currentTaskIndex,
      @JsonKey(name: 'is_finished')
          required bool isFinished,
      @JsonKey(name: 'estimation_scale')
          required EstimationScaleDomainModel estimationScale,
      required List<TaskDomainModel> tasks}) = _$_SessionDomainModel;
  _SessionDomainModel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_task_index')
  int? get currentTaskIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estimation_scale')
  EstimationScaleDomainModel get estimationScale =>
      throw _privateConstructorUsedError;
  @override
  List<TaskDomainModel> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDomainModelCopyWith<_SessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
