// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_overview_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionOverviewDataModel _$SessionOverviewDataModelFromJson(
    Map<String, dynamic> json) {
  return _SessionOverviewDataModel.fromJson(json);
}

/// @nodoc
class _$SessionOverviewDataModelTearOff {
  const _$SessionOverviewDataModelTearOff();

  _SessionOverviewDataModel call(
      {required String title,
      @JsonKey(name: 'is_finished') required bool isFinished,
      @JsonKey(name: 'num_tasks') required int numTasks,
      @JsonKey(name: 'creator_uid') required String creatorUid}) {
    return _SessionOverviewDataModel(
      title: title,
      isFinished: isFinished,
      numTasks: numTasks,
      creatorUid: creatorUid,
    );
  }

  SessionOverviewDataModel fromJson(Map<String, Object> json) {
    return SessionOverviewDataModel.fromJson(json);
  }
}

/// @nodoc
const $SessionOverviewDataModel = _$SessionOverviewDataModelTearOff();

/// @nodoc
mixin _$SessionOverviewDataModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_tasks')
  int get numTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionOverviewDataModelCopyWith<SessionOverviewDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionOverviewDataModelCopyWith<$Res> {
  factory $SessionOverviewDataModelCopyWith(SessionOverviewDataModel value,
          $Res Function(SessionOverviewDataModel) then) =
      _$SessionOverviewDataModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'num_tasks') int numTasks,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class _$SessionOverviewDataModelCopyWithImpl<$Res>
    implements $SessionOverviewDataModelCopyWith<$Res> {
  _$SessionOverviewDataModelCopyWithImpl(this._value, this._then);

  final SessionOverviewDataModel _value;
  // ignore: unused_field
  final $Res Function(SessionOverviewDataModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? isFinished = freezed,
    Object? numTasks = freezed,
    Object? creatorUid = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      numTasks: numTasks == freezed
          ? _value.numTasks
          : numTasks // ignore: cast_nullable_to_non_nullable
              as int,
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SessionOverviewDataModelCopyWith<$Res>
    implements $SessionOverviewDataModelCopyWith<$Res> {
  factory _$SessionOverviewDataModelCopyWith(_SessionOverviewDataModel value,
          $Res Function(_SessionOverviewDataModel) then) =
      __$SessionOverviewDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'num_tasks') int numTasks,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class __$SessionOverviewDataModelCopyWithImpl<$Res>
    extends _$SessionOverviewDataModelCopyWithImpl<$Res>
    implements _$SessionOverviewDataModelCopyWith<$Res> {
  __$SessionOverviewDataModelCopyWithImpl(_SessionOverviewDataModel _value,
      $Res Function(_SessionOverviewDataModel) _then)
      : super(_value, (v) => _then(v as _SessionOverviewDataModel));

  @override
  _SessionOverviewDataModel get _value =>
      super._value as _SessionOverviewDataModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? isFinished = freezed,
    Object? numTasks = freezed,
    Object? creatorUid = freezed,
  }) {
    return _then(_SessionOverviewDataModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      numTasks: numTasks == freezed
          ? _value.numTasks
          : numTasks // ignore: cast_nullable_to_non_nullable
              as int,
      creatorUid: creatorUid == freezed
          ? _value.creatorUid
          : creatorUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionOverviewDataModel implements _SessionOverviewDataModel {
  _$_SessionOverviewDataModel(
      {required this.title,
      @JsonKey(name: 'is_finished') required this.isFinished,
      @JsonKey(name: 'num_tasks') required this.numTasks,
      @JsonKey(name: 'creator_uid') required this.creatorUid});

  factory _$_SessionOverviewDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SessionOverviewDataModelFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'is_finished')
  final bool isFinished;
  @override
  @JsonKey(name: 'num_tasks')
  final int numTasks;
  @override
  @JsonKey(name: 'creator_uid')
  final String creatorUid;

  @override
  String toString() {
    return 'SessionOverviewDataModel(title: $title, isFinished: $isFinished, numTasks: $numTasks, creatorUid: $creatorUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionOverviewDataModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)) &&
            (identical(other.numTasks, numTasks) ||
                const DeepCollectionEquality()
                    .equals(other.numTasks, numTasks)) &&
            (identical(other.creatorUid, creatorUid) ||
                const DeepCollectionEquality()
                    .equals(other.creatorUid, creatorUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(numTasks) ^
      const DeepCollectionEquality().hash(creatorUid);

  @JsonKey(ignore: true)
  @override
  _$SessionOverviewDataModelCopyWith<_SessionOverviewDataModel> get copyWith =>
      __$SessionOverviewDataModelCopyWithImpl<_SessionOverviewDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SessionOverviewDataModelToJson(this);
  }
}

abstract class _SessionOverviewDataModel implements SessionOverviewDataModel {
  factory _SessionOverviewDataModel(
          {required String title,
          @JsonKey(name: 'is_finished') required bool isFinished,
          @JsonKey(name: 'num_tasks') required int numTasks,
          @JsonKey(name: 'creator_uid') required String creatorUid}) =
      _$_SessionOverviewDataModel;

  factory _SessionOverviewDataModel.fromJson(Map<String, dynamic> json) =
      _$_SessionOverviewDataModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'num_tasks')
  int get numTasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionOverviewDataModelCopyWith<_SessionOverviewDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
