// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TaskDomainModelTearOff {
  const _$TaskDomainModelTearOff();

  _TaskDomainModel call(
      {required String title,
      required bool areCardsFlipped,
      String? description,
      String? finalEstimation,
      String? jiraLink,
      required List<EstimationDomainModel> estimations}) {
    return _TaskDomainModel(
      title: title,
      areCardsFlipped: areCardsFlipped,
      description: description,
      finalEstimation: finalEstimation,
      jiraLink: jiraLink,
      estimations: estimations,
    );
  }
}

/// @nodoc
const $TaskDomainModel = _$TaskDomainModelTearOff();

/// @nodoc
mixin _$TaskDomainModel {
  String get title => throw _privateConstructorUsedError;
  bool get areCardsFlipped => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get finalEstimation => throw _privateConstructorUsedError;
  String? get jiraLink => throw _privateConstructorUsedError;
  List<EstimationDomainModel> get estimations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDomainModelCopyWith<TaskDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDomainModelCopyWith<$Res> {
  factory $TaskDomainModelCopyWith(
          TaskDomainModel value, $Res Function(TaskDomainModel) then) =
      _$TaskDomainModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      bool areCardsFlipped,
      String? description,
      String? finalEstimation,
      String? jiraLink,
      List<EstimationDomainModel> estimations});
}

/// @nodoc
class _$TaskDomainModelCopyWithImpl<$Res>
    implements $TaskDomainModelCopyWith<$Res> {
  _$TaskDomainModelCopyWithImpl(this._value, this._then);

  final TaskDomainModel _value;
  // ignore: unused_field
  final $Res Function(TaskDomainModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? areCardsFlipped = freezed,
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
      areCardsFlipped: areCardsFlipped == freezed
          ? _value.areCardsFlipped
          : areCardsFlipped // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as List<EstimationDomainModel>,
    ));
  }
}

/// @nodoc
abstract class _$TaskDomainModelCopyWith<$Res>
    implements $TaskDomainModelCopyWith<$Res> {
  factory _$TaskDomainModelCopyWith(
          _TaskDomainModel value, $Res Function(_TaskDomainModel) then) =
      __$TaskDomainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      bool areCardsFlipped,
      String? description,
      String? finalEstimation,
      String? jiraLink,
      List<EstimationDomainModel> estimations});
}

/// @nodoc
class __$TaskDomainModelCopyWithImpl<$Res>
    extends _$TaskDomainModelCopyWithImpl<$Res>
    implements _$TaskDomainModelCopyWith<$Res> {
  __$TaskDomainModelCopyWithImpl(
      _TaskDomainModel _value, $Res Function(_TaskDomainModel) _then)
      : super(_value, (v) => _then(v as _TaskDomainModel));

  @override
  _TaskDomainModel get _value => super._value as _TaskDomainModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? areCardsFlipped = freezed,
    Object? description = freezed,
    Object? finalEstimation = freezed,
    Object? jiraLink = freezed,
    Object? estimations = freezed,
  }) {
    return _then(_TaskDomainModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      areCardsFlipped: areCardsFlipped == freezed
          ? _value.areCardsFlipped
          : areCardsFlipped // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as List<EstimationDomainModel>,
    ));
  }
}

/// @nodoc

class _$_TaskDomainModel implements _TaskDomainModel {
  const _$_TaskDomainModel(
      {required this.title,
      required this.areCardsFlipped,
      this.description,
      this.finalEstimation,
      this.jiraLink,
      required this.estimations});

  @override
  final String title;
  @override
  final bool areCardsFlipped;
  @override
  final String? description;
  @override
  final String? finalEstimation;
  @override
  final String? jiraLink;
  @override
  final List<EstimationDomainModel> estimations;

  @override
  String toString() {
    return 'TaskDomainModel(title: $title, areCardsFlipped: $areCardsFlipped, description: $description, finalEstimation: $finalEstimation, jiraLink: $jiraLink, estimations: $estimations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDomainModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.areCardsFlipped, areCardsFlipped) ||
                const DeepCollectionEquality()
                    .equals(other.areCardsFlipped, areCardsFlipped)) &&
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
      const DeepCollectionEquality().hash(areCardsFlipped) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(finalEstimation) ^
      const DeepCollectionEquality().hash(jiraLink) ^
      const DeepCollectionEquality().hash(estimations);

  @JsonKey(ignore: true)
  @override
  _$TaskDomainModelCopyWith<_TaskDomainModel> get copyWith =>
      __$TaskDomainModelCopyWithImpl<_TaskDomainModel>(this, _$identity);
}

abstract class _TaskDomainModel implements TaskDomainModel {
  const factory _TaskDomainModel(
      {required String title,
      required bool areCardsFlipped,
      String? description,
      String? finalEstimation,
      String? jiraLink,
      required List<EstimationDomainModel> estimations}) = _$_TaskDomainModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get areCardsFlipped => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get finalEstimation => throw _privateConstructorUsedError;
  @override
  String? get jiraLink => throw _privateConstructorUsedError;
  @override
  List<EstimationDomainModel> get estimations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskDomainModelCopyWith<_TaskDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
