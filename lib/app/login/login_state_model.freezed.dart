// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateModelTearOff {
  const _$LoginStateModelTearOff();

  _LoginStateModel call(
      {required String appBarTitle,
      required String title,
      required String hint,
      required String loginButtonText}) {
    return _LoginStateModel(
      appBarTitle: appBarTitle,
      title: title,
      hint: hint,
      loginButtonText: loginButtonText,
    );
  }
}

/// @nodoc
const $LoginStateModel = _$LoginStateModelTearOff();

/// @nodoc
mixin _$LoginStateModel {
  String get appBarTitle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;
  String get loginButtonText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateModelCopyWith<LoginStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateModelCopyWith<$Res> {
  factory $LoginStateModelCopyWith(
          LoginStateModel value, $Res Function(LoginStateModel) then) =
      _$LoginStateModelCopyWithImpl<$Res>;
  $Res call(
      {String appBarTitle, String title, String hint, String loginButtonText});
}

/// @nodoc
class _$LoginStateModelCopyWithImpl<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  _$LoginStateModelCopyWithImpl(this._value, this._then);

  final LoginStateModel _value;
  // ignore: unused_field
  final $Res Function(LoginStateModel) _then;

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
abstract class _$LoginStateModelCopyWith<$Res>
    implements $LoginStateModelCopyWith<$Res> {
  factory _$LoginStateModelCopyWith(
          _LoginStateModel value, $Res Function(_LoginStateModel) then) =
      __$LoginStateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appBarTitle, String title, String hint, String loginButtonText});
}

/// @nodoc
class __$LoginStateModelCopyWithImpl<$Res>
    extends _$LoginStateModelCopyWithImpl<$Res>
    implements _$LoginStateModelCopyWith<$Res> {
  __$LoginStateModelCopyWithImpl(
      _LoginStateModel _value, $Res Function(_LoginStateModel) _then)
      : super(_value, (v) => _then(v as _LoginStateModel));

  @override
  _LoginStateModel get _value => super._value as _LoginStateModel;

  @override
  $Res call({
    Object? appBarTitle = freezed,
    Object? title = freezed,
    Object? hint = freezed,
    Object? loginButtonText = freezed,
  }) {
    return _then(_LoginStateModel(
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

class _$_LoginStateModel implements _LoginStateModel {
  const _$_LoginStateModel(
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
    return 'LoginStateModel(appBarTitle: $appBarTitle, title: $title, hint: $hint, loginButtonText: $loginButtonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginStateModel &&
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
  _$LoginStateModelCopyWith<_LoginStateModel> get copyWith =>
      __$LoginStateModelCopyWithImpl<_LoginStateModel>(this, _$identity);
}

abstract class _LoginStateModel implements LoginStateModel {
  const factory _LoginStateModel(
      {required String appBarTitle,
      required String title,
      required String hint,
      required String loginButtonText}) = _$_LoginStateModel;

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
  _$LoginStateModelCopyWith<_LoginStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
