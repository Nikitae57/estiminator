// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDataModel _$TaskDataModelFromJson(Map<String, dynamic> json) {
  return _TaskDataModel.fromJson(json);
}

/// @nodoc
class _$TaskDataModelTearOff {
  const _$TaskDataModelTearOff();

  _TaskDataModel call(
      {required String title,
      String? description,
      @JsonKey(name: 'final_estimation') String? finalEstimation,
      @JsonKey(name: 'jira_link') String? jiraLink,
      required List<EstimationDataModel> estimations}) {
    return _TaskDataModel(
      title: title,
      description: description,
      finalEstimation: finalEstimation,
      jiraLink: jiraLink,
      estimations: estimations,
    );
  }

  TaskDataModel fromJson(Map<String, Object> json) {
    return TaskDataModel.fromJson(json);
  }
}

/// @nodoc
const $TaskDataModel = _$TaskDataModelTearOff();

/// @nodoc
mixin _$TaskDataModel {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_estimation')
  String? get finalEstimation => throw _privateConstructorUsedError;
  @JsonKey(name: 'jira_link')
  String? get jiraLink => throw _privateConstructorUsedError;
  List<EstimationDataModel> get estimations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDataModelCopyWith<TaskDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDataModelCopyWith<$Res> {
  factory $TaskDataModelCopyWith(
          TaskDataModel value, $Res Function(TaskDataModel) then) =
      _$TaskDataModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String? description,
      @JsonKey(name: 'final_estimation') String? finalEstimation,
      @JsonKey(name: 'jira_link') String? jiraLink,
      List<EstimationDataModel> estimations});
}

/// @nodoc
class _$TaskDataModelCopyWithImpl<$Res>
    implements $TaskDataModelCopyWith<$Res> {
  _$TaskDataModelCopyWithImpl(this._value, this._then);

  final TaskDataModel _value;
  // ignore: unused_field
  final $Res Function(TaskDataModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? finalEstimation = freezed,
    Object? jiraLink = freezed,
    Object? estimations = freezed,
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
      finalEstimation: finalEstimation == freezed
          ? _value.finalEstimation
          : finalEstimation // ignore: cast_nullable_to_non_nullable
              as String?,
      jiraLink: jiraLink == freezed
          ? _value.jiraLink
          : jiraLink // ignore: cast_nullable_to_non_nullable
              as String?,
      estimations: estimations == freezed
          ? _value.estimations
          : estimations // ignore: cast_nullable_to_non_nullable
              as List<EstimationDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$TaskDataModelCopyWith<$Res>
    implements $TaskDataModelCopyWith<$Res> {
  factory _$TaskDataModelCopyWith(
          _TaskDataModel value, $Res Function(_TaskDataModel) then) =
      __$TaskDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String? description,
      @JsonKey(name: 'final_estimation') String? finalEstimation,
      @JsonKey(name: 'jira_link') String? jiraLink,
      List<EstimationDataModel> estimations});
}

/// @nodoc
class __$TaskDataModelCopyWithImpl<$Res>
    extends _$TaskDataModelCopyWithImpl<$Res>
    implements _$TaskDataModelCopyWith<$Res> {
  __$TaskDataModelCopyWithImpl(
      _TaskDataModel _value, $Res Function(_TaskDataModel) _then)
      : super(_value, (v) => _then(v as _TaskDataModel));

  @override
  _TaskDataModel get _value => super._value as _TaskDataModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? finalEstimation = freezed,
    Object? jiraLink = freezed,
    Object? estimations = freezed,
  }) {
    return _then(_TaskDataModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      finalEstimation: finalEstimation == freezed
          ? _value.finalEstimation
          : finalEstimation // ignore: cast_nullable_to_non_nullable
              as String?,
      jiraLink: jiraLink == freezed
          ? _value.jiraLink
          : jiraLink // ignore: cast_nullable_to_non_nullable
              as String?,
      estimations: estimations == freezed
          ? _value.estimations
          : estimations // ignore: cast_nullable_to_non_nullable
              as List<EstimationDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDataModel implements _TaskDataModel {
  _$_TaskDataModel(
      {required this.title,
      this.description,
      @JsonKey(name: 'final_estimation') this.finalEstimation,
      @JsonKey(name: 'jira_link') this.jiraLink,
      required this.estimations});

  factory _$_TaskDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskDataModelFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey(name: 'final_estimation')
  final String? finalEstimation;
  @override
  @JsonKey(name: 'jira_link')
  final String? jiraLink;
  @override
  final List<EstimationDataModel> estimations;

  @override
  String toString() {
    return 'TaskDataModel(title: $title, description: $description, finalEstimation: $finalEstimation, jiraLink: $jiraLink, estimations: $estimations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDataModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.finalEstimation, finalEstimation) ||
                const DeepCollectionEquality()
                    .equals(other.finalEstimation, finalEstimation)) &&
            (identical(other.jiraLink, jiraLink) ||
                const DeepCollectionEquality()
                    .equals(other.jiraLink, jiraLink)) &&
            (identical(other.estimations, estimations) ||
                const DeepCollectionEquality()
                    .equals(other.estimations, estimations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(finalEstimation) ^
      const DeepCollectionEquality().hash(jiraLink) ^
      const DeepCollectionEquality().hash(estimations);

  @JsonKey(ignore: true)
  @override
  _$TaskDataModelCopyWith<_TaskDataModel> get copyWith =>
      __$TaskDataModelCopyWithImpl<_TaskDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskDataModelToJson(this);
  }
}

abstract class _TaskDataModel implements TaskDataModel {
  factory _TaskDataModel(
      {required String title,
      String? description,
      @JsonKey(name: 'final_estimation') String? finalEstimation,
      @JsonKey(name: 'jira_link') String? jiraLink,
      required List<EstimationDataModel> estimations}) = _$_TaskDataModel;

  factory _TaskDataModel.fromJson(Map<String, dynamic> json) =
      _$_TaskDataModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'final_estimation')
  String? get finalEstimation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'jira_link')
  String? get jiraLink => throw _privateConstructorUsedError;
  @override
  List<EstimationDataModel> get estimations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskDataModelCopyWith<_TaskDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
