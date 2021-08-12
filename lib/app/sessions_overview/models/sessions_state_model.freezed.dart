// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sessions_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionsStateModelTearOff {
  const _$SessionsStateModelTearOff();

  State call({required String appBarTitle, required String username}) {
    return State(
      appBarTitle: appBarTitle,
      username: username,
    );
  }
}

/// @nodoc
const $SessionsStateModel = _$SessionsStateModelTearOff();

/// @nodoc
mixin _$SessionsStateModel {
  String get appBarTitle => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsStateModelCopyWith<SessionsStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsStateModelCopyWith<$Res> {
  factory $SessionsStateModelCopyWith(
          SessionsStateModel value, $Res Function(SessionsStateModel) then) =
      _$SessionsStateModelCopyWithImpl<$Res>;
  $Res call({String appBarTitle, String username});
}

/// @nodoc
class _$SessionsStateModelCopyWithImpl<$Res>
    implements $SessionsStateModelCopyWith<$Res> {
  _$SessionsStateModelCopyWithImpl(this._value, this._then);

  final SessionsStateModel _value;
  // ignore: unused_field
  final $Res Function(SessionsStateModel) _then;

  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $StateCopyWith<$Res>
    implements $SessionsStateModelCopyWith<$Res> {
  factory $StateCopyWith(State value, $Res Function(State) then) =
      _$StateCopyWithImpl<$Res>;
  @override
  $Res call({String appBarTitle, String username});
}

/// @nodoc
class _$StateCopyWithImpl<$Res> extends _$SessionsStateModelCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(State _value, $Res Function(State) _then)
      : super(_value, (v) => _then(v as State));

  @override
  State get _value => super._value as State;

  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? username = freezed,
  }) {
    return _then(State(
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$State implements State {
  _$State({required this.appBarTitle, required this.username});

  @override
  final String appBarTitle;
  @override
  final String username;

  @override
  String toString() {
    return 'SessionsStateModel(appBarTitle: $appBarTitle, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is State &&
            (identical(other.appBarTitle, appBarTitle) ||
                const DeepCollectionEquality()
                    .equals(other.appBarTitle, appBarTitle)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appBarTitle) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $StateCopyWith<State> get copyWith =>
      _$StateCopyWithImpl<State>(this, _$identity);
}

abstract class State implements SessionsStateModel {
  factory State({required String appBarTitle, required String username}) =
      _$State;

  @override
  String get appBarTitle => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StateCopyWith<State> get copyWith => throw _privateConstructorUsedError;
}
