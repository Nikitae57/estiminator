// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tasks_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TasksDataModel _$TasksDataModelFromJson(Map<String, dynamic> json) {
  return _TasksDataModel.fromJson(json);
}

/// @nodoc
class _$TasksDataModelTearOff {
  const _$TasksDataModelTearOff();

  _TasksDataModel call({required List<TaskDataModel> tasks}) {
    return _TasksDataModel(
      tasks: tasks,
    );
  }

  TasksDataModel fromJson(Map<String, Object> json) {
    return TasksDataModel.fromJson(json);
  }
}

/// @nodoc
const $TasksDataModel = _$TasksDataModelTearOff();

/// @nodoc
mixin _$TasksDataModel {
  List<TaskDataModel> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksDataModelCopyWith<TasksDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksDataModelCopyWith<$Res> {
  factory $TasksDataModelCopyWith(
          TasksDataModel value, $Res Function(TasksDataModel) then) =
      _$TasksDataModelCopyWithImpl<$Res>;
  $Res call({List<TaskDataModel> tasks});
}

/// @nodoc
class _$TasksDataModelCopyWithImpl<$Res>
    implements $TasksDataModelCopyWith<$Res> {
  _$TasksDataModelCopyWithImpl(this._value, this._then);

  final TasksDataModel _value;
  // ignore: unused_field
  final $Res Function(TasksDataModel) _then;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$TasksDataModelCopyWith<$Res>
    implements $TasksDataModelCopyWith<$Res> {
  factory _$TasksDataModelCopyWith(
          _TasksDataModel value, $Res Function(_TasksDataModel) then) =
      __$TasksDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskDataModel> tasks});
}

/// @nodoc
class __$TasksDataModelCopyWithImpl<$Res>
    extends _$TasksDataModelCopyWithImpl<$Res>
    implements _$TasksDataModelCopyWith<$Res> {
  __$TasksDataModelCopyWithImpl(
      _TasksDataModel _value, $Res Function(_TasksDataModel) _then)
      : super(_value, (v) => _then(v as _TasksDataModel));

  @override
  _TasksDataModel get _value => super._value as _TasksDataModel;

  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_TasksDataModel(
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TasksDataModel implements _TasksDataModel {
  _$_TasksDataModel({required this.tasks});

  factory _$_TasksDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TasksDataModelFromJson(json);

  @override
  final List<TaskDataModel> tasks;

  @override
  String toString() {
    return 'TasksDataModel(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TasksDataModel &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$TasksDataModelCopyWith<_TasksDataModel> get copyWith =>
      __$TasksDataModelCopyWithImpl<_TasksDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TasksDataModelToJson(this);
  }
}

abstract class _TasksDataModel implements TasksDataModel {
  factory _TasksDataModel({required List<TaskDataModel> tasks}) =
      _$_TasksDataModel;

  factory _TasksDataModel.fromJson(Map<String, dynamic> json) =
      _$_TasksDataModel.fromJson;

  @override
  List<TaskDataModel> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TasksDataModelCopyWith<_TasksDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
