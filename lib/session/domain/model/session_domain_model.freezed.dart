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
      required String creatorUid,
      required int? currentTaskIndex,
      required bool isFinished,
      required List<TaskDomainModel> tasks}) {
    return _SessionDomainModel(
      id: id,
      title: title,
      creatorUid: creatorUid,
      currentTaskIndex: currentTaskIndex,
      isFinished: isFinished,
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
  String get creatorUid => throw _privateConstructorUsedError;
  int? get currentTaskIndex => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
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
      String creatorUid,
      int? currentTaskIndex,
      bool isFinished,
      List<TaskDomainModel> tasks});
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
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDomainModel>,
    ));
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
      String creatorUid,
      int? currentTaskIndex,
      bool isFinished,
      List<TaskDomainModel> tasks});
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
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDomainModel>,
    ));
  }
}

/// @nodoc

class _$_SessionDomainModel implements _SessionDomainModel {
  const _$_SessionDomainModel(
      {required this.id,
      required this.title,
      required this.creatorUid,
      required this.currentTaskIndex,
      required this.isFinished,
      required this.tasks});

  @override
  final String id;
  @override
  final String title;
  @override
  final String creatorUid;
  @override
  final int? currentTaskIndex;
  @override
  final bool isFinished;
  @override
  final List<TaskDomainModel> tasks;

  @override
  String toString() {
    return 'SessionDomainModel(id: $id, title: $title, creatorUid: $creatorUid, currentTaskIndex: $currentTaskIndex, isFinished: $isFinished, tasks: $tasks)';
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
      const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$SessionDomainModelCopyWith<_SessionDomainModel> get copyWith =>
      __$SessionDomainModelCopyWithImpl<_SessionDomainModel>(this, _$identity);
}

abstract class _SessionDomainModel implements SessionDomainModel {
  const factory _SessionDomainModel(
      {required String id,
      required String title,
      required String creatorUid,
      required int? currentTaskIndex,
      required bool isFinished,
      required List<TaskDomainModel> tasks}) = _$_SessionDomainModel;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  int? get currentTaskIndex => throw _privateConstructorUsedError;
  @override
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  List<TaskDomainModel> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionDomainModelCopyWith<_SessionDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
