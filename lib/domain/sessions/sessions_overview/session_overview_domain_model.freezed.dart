// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_overview_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionOverviewDomainModelTearOff {
  const _$SessionOverviewDomainModelTearOff();

  _SessionOverviewDomainModel call(
      {required String title,
      @JsonKey(name: 'is_finished') required bool isFinished,
      @JsonKey(name: 'num_tasks') required int numTasks,
      @JsonKey(name: 'creator_uid') required String creatorUid}) {
    return _SessionOverviewDomainModel(
      title: title,
      isFinished: isFinished,
      numTasks: numTasks,
      creatorUid: creatorUid,
    );
  }
}

/// @nodoc
const $SessionOverviewDomainModel = _$SessionOverviewDomainModelTearOff();

/// @nodoc
mixin _$SessionOverviewDomainModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_tasks')
  int get numTasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  String get creatorUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionOverviewDomainModelCopyWith<SessionOverviewDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionOverviewDomainModelCopyWith<$Res> {
  factory $SessionOverviewDomainModelCopyWith(SessionOverviewDomainModel value,
          $Res Function(SessionOverviewDomainModel) then) =
      _$SessionOverviewDomainModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'num_tasks') int numTasks,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class _$SessionOverviewDomainModelCopyWithImpl<$Res>
    implements $SessionOverviewDomainModelCopyWith<$Res> {
  _$SessionOverviewDomainModelCopyWithImpl(this._value, this._then);

  final SessionOverviewDomainModel _value;
  // ignore: unused_field
  final $Res Function(SessionOverviewDomainModel) _then;

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
abstract class _$SessionOverviewDomainModelCopyWith<$Res>
    implements $SessionOverviewDomainModelCopyWith<$Res> {
  factory _$SessionOverviewDomainModelCopyWith(
          _SessionOverviewDomainModel value,
          $Res Function(_SessionOverviewDomainModel) then) =
      __$SessionOverviewDomainModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'num_tasks') int numTasks,
      @JsonKey(name: 'creator_uid') String creatorUid});
}

/// @nodoc
class __$SessionOverviewDomainModelCopyWithImpl<$Res>
    extends _$SessionOverviewDomainModelCopyWithImpl<$Res>
    implements _$SessionOverviewDomainModelCopyWith<$Res> {
  __$SessionOverviewDomainModelCopyWithImpl(_SessionOverviewDomainModel _value,
      $Res Function(_SessionOverviewDomainModel) _then)
      : super(_value, (v) => _then(v as _SessionOverviewDomainModel));

  @override
  _SessionOverviewDomainModel get _value =>
      super._value as _SessionOverviewDomainModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? isFinished = freezed,
    Object? numTasks = freezed,
    Object? creatorUid = freezed,
  }) {
    return _then(_SessionOverviewDomainModel(
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

class _$_SessionOverviewDomainModel implements _SessionOverviewDomainModel {
  _$_SessionOverviewDomainModel(
      {required this.title,
      @JsonKey(name: 'is_finished') required this.isFinished,
      @JsonKey(name: 'num_tasks') required this.numTasks,
      @JsonKey(name: 'creator_uid') required this.creatorUid});

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
    return 'SessionOverviewDomainModel(title: $title, isFinished: $isFinished, numTasks: $numTasks, creatorUid: $creatorUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionOverviewDomainModel &&
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
  _$SessionOverviewDomainModelCopyWith<_SessionOverviewDomainModel>
      get copyWith => __$SessionOverviewDomainModelCopyWithImpl<
          _SessionOverviewDomainModel>(this, _$identity);
}

abstract class _SessionOverviewDomainModel
    implements SessionOverviewDomainModel {
  factory _SessionOverviewDomainModel(
          {required String title,
          @JsonKey(name: 'is_finished') required bool isFinished,
          @JsonKey(name: 'num_tasks') required int numTasks,
          @JsonKey(name: 'creator_uid') required String creatorUid}) =
      _$_SessionOverviewDomainModel;

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
  _$SessionOverviewDomainModelCopyWith<_SessionOverviewDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
