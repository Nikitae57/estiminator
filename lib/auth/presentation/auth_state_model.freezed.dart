// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateModelTearOff {
  const _$AuthStateModelTearOff();

  _AuthStateModel call(
      {required String appBarTitle,
      required String title,
      required String hint,
      required String loginButtonText}) {
    return _AuthStateModel(
      appBarTitle: appBarTitle,
      title: title,
      hint: hint,
      loginButtonText: loginButtonText,
    );
  }
}

/// @nodoc
const $AuthStateModel = _$AuthStateModelTearOff();

/// @nodoc
mixin _$AuthStateModel {
  String get appBarTitle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;
  String get loginButtonText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateModelCopyWith<AuthStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateModelCopyWith<$Res> {
  factory $AuthStateModelCopyWith(
          AuthStateModel value, $Res Function(AuthStateModel) then) =
      _$AuthStateModelCopyWithImpl<$Res>;
  $Res call(
      {String appBarTitle, String title, String hint, String loginButtonText});
}

/// @nodoc
class _$AuthStateModelCopyWithImpl<$Res>
    implements $AuthStateModelCopyWith<$Res> {
  _$AuthStateModelCopyWithImpl(this._value, this._then);

  final AuthStateModel _value;
  // ignore: unused_field
  final $Res Function(AuthStateModel) _then;

  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? title = freezed,
    Object? hint = freezed,
    Object? loginButtonText = freezed,
  }) {
    return _then(_value.copyWith(
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      loginButtonText: loginButtonText == freezed
          ? _value.loginButtonText
          : loginButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateModelCopyWith<$Res>
    implements $AuthStateModelCopyWith<$Res> {
  factory _$AuthStateModelCopyWith(
          _AuthStateModel value, $Res Function(_AuthStateModel) then) =
      __$AuthStateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appBarTitle, String title, String hint, String loginButtonText});
}

/// @nodoc
class __$AuthStateModelCopyWithImpl<$Res>
    extends _$AuthStateModelCopyWithImpl<$Res>
    implements _$AuthStateModelCopyWith<$Res> {
  __$AuthStateModelCopyWithImpl(
      _AuthStateModel _value, $Res Function(_AuthStateModel) _then)
      : super(_value, (v) => _then(v as _AuthStateModel));

  @override
  _AuthStateModel get _value => super._value as _AuthStateModel;

  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? title = freezed,
    Object? hint = freezed,
    Object? loginButtonText = freezed,
  }) {
    return _then(_AuthStateModel(
      appBarTitle: appBarTitle == freezed
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      loginButtonText: loginButtonText == freezed
          ? _value.loginButtonText
          : loginButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateModel implements _AuthStateModel {
  const _$_AuthStateModel(
      {required this.appBarTitle,
      required this.title,
      required this.hint,
      required this.loginButtonText});

  @override
  final String appBarTitle;
  @override
  final String title;
  @override
  final String hint;
  @override
  final String loginButtonText;

  @override
  String toString() {
    return 'AuthStateModel(appBarTitle: $appBarTitle, title: $title, hint: $hint, loginButtonText: $loginButtonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthStateModel &&
            (identical(other.appBarTitle, appBarTitle) ||
                const DeepCollectionEquality()
                    .equals(other.appBarTitle, appBarTitle)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.hint, hint) ||
                const DeepCollectionEquality().equals(other.hint, hint)) &&
            (identical(other.loginButtonText, loginButtonText) ||
                const DeepCollectionEquality()
                    .equals(other.loginButtonText, loginButtonText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appBarTitle) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(hint) ^
      const DeepCollectionEquality().hash(loginButtonText);

  @JsonKey(ignore: true)
  @override
  _$AuthStateModelCopyWith<_AuthStateModel> get copyWith =>
      __$AuthStateModelCopyWithImpl<_AuthStateModel>(this, _$identity);
}

abstract class _AuthStateModel implements AuthStateModel {
  const factory _AuthStateModel(
      {required String appBarTitle,
      required String title,
      required String hint,
      required String loginButtonText}) = _$_AuthStateModel;

  @override
  String get appBarTitle => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get hint => throw _privateConstructorUsedError;
  @override
  String get loginButtonText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateModelCopyWith<_AuthStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
