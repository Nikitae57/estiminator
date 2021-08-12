// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'session_overview_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionOverviewStateModelTearOff {
  const _$SessionOverviewStateModelTearOff();

  _SessionOverviewStateModel call(
      {required String title,
      required String creatorName,
      required String numTasksText,
      required bool isFinished}) {
    return _SessionOverviewStateModel(
      title: title,
      creatorName: creatorName,
      numTasksText: numTasksText,
      isFinished: isFinished,
    );
  }
}

/// @nodoc
const $SessionOverviewStateModel = _$SessionOverviewStateModelTearOff();

/// @nodoc
mixin _$SessionOverviewStateModel {
  String get title => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;
  String get numTasksText => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionOverviewStateModelCopyWith<SessionOverviewStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionOverviewStateModelCopyWith<$Res> {
  factory $SessionOverviewStateModelCopyWith(SessionOverviewStateModel value,
          $Res Function(SessionOverviewStateModel) then) =
      _$SessionOverviewStateModelCopyWithImpl<$Res>;
  $Res call(
      {String title, String creatorName, String numTasksText, bool isFinished});
}

/// @nodoc
class _$SessionOverviewStateModelCopyWithImpl<$Res>
    implements $SessionOverviewStateModelCopyWith<$Res> {
  _$SessionOverviewStateModelCopyWithImpl(this._value, this._then);

  final SessionOverviewStateModel _value;
  // ignore: unused_field
  final $Res Function(SessionOverviewStateModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? creatorName = freezed,
    Object? numTasksText = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: creatorName == freezed
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      numTasksText: numTasksText == freezed
          ? _value.numTasksText
          : numTasksText // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SessionOverviewStateModelCopyWith<$Res>
    implements $SessionOverviewStateModelCopyWith<$Res> {
  factory _$SessionOverviewStateModelCopyWith(_SessionOverviewStateModel value,
          $Res Function(_SessionOverviewStateModel) then) =
      __$SessionOverviewStateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String creatorName, String numTasksText, bool isFinished});
}

/// @nodoc
class __$SessionOverviewStateModelCopyWithImpl<$Res>
    extends _$SessionOverviewStateModelCopyWithImpl<$Res>
    implements _$SessionOverviewStateModelCopyWith<$Res> {
  __$SessionOverviewStateModelCopyWithImpl(_SessionOverviewStateModel _value,
      $Res Function(_SessionOverviewStateModel) _then)
      : super(_value, (v) => _then(v as _SessionOverviewStateModel));

  @override
  _SessionOverviewStateModel get _value =>
      super._value as _SessionOverviewStateModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? creatorName = freezed,
    Object? numTasksText = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(_SessionOverviewStateModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: creatorName == freezed
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      numTasksText: numTasksText == freezed
          ? _value.numTasksText
          : numTasksText // ignore: cast_nullable_to_non_nullable
              as String,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SessionOverviewStateModel implements _SessionOverviewStateModel {
  _$_SessionOverviewStateModel(
      {required this.title,
      required this.creatorName,
      required this.numTasksText,
      required this.isFinished});

  @override
  final String title;
  @override
  final String creatorName;
  @override
  final String numTasksText;
  @override
  final bool isFinished;

  @override
  String toString() {
    return 'SessionOverviewStateModel(title: $title, creatorName: $creatorName, numTasksText: $numTasksText, isFinished: $isFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionOverviewStateModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.creatorName, creatorName) ||
                const DeepCollectionEquality()
                    .equals(other.creatorName, creatorName)) &&
            (identical(other.numTasksText, numTasksText) ||
                const DeepCollectionEquality()
                    .equals(other.numTasksText, numTasksText)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(creatorName) ^
      const DeepCollectionEquality().hash(numTasksText) ^
      const DeepCollectionEquality().hash(isFinished);

  @JsonKey(ignore: true)
  @override
  _$SessionOverviewStateModelCopyWith<_SessionOverviewStateModel>
      get copyWith =>
          __$SessionOverviewStateModelCopyWithImpl<_SessionOverviewStateModel>(
              this, _$identity);
}

abstract class _SessionOverviewStateModel implements SessionOverviewStateModel {
  factory _SessionOverviewStateModel(
      {required String title,
      required String creatorName,
      required String numTasksText,
      required bool isFinished}) = _$_SessionOverviewStateModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get creatorName => throw _privateConstructorUsedError;
  @override
  String get numTasksText => throw _privateConstructorUsedError;
  @override
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SessionOverviewStateModelCopyWith<_SessionOverviewStateModel>
      get copyWith => throw _privateConstructorUsedError;
}
