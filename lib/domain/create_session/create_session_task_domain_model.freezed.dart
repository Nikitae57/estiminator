// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_session_task_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateSessionTaskDomainModelTearOff {
  const _$CreateSessionTaskDomainModelTearOff();

  _CreateSessionTaskDomainModel call(
      {required String title, String? description, String? jiraLink}) {
    return _CreateSessionTaskDomainModel(
      title: title,
      description: description,
      jiraLink: jiraLink,
    );
  }
}

/// @nodoc
const $CreateSessionTaskDomainModel = _$CreateSessionTaskDomainModelTearOff();

/// @nodoc
mixin _$CreateSessionTaskDomainModel {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get jiraLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateSessionTaskDomainModelCopyWith<CreateSessionTaskDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSessionTaskDomainModelCopyWith<$Res> {
  factory $CreateSessionTaskDomainModelCopyWith(
          CreateSessionTaskDomainModel value,
          $Res Function(CreateSessionTaskDomainModel) then) =
      _$CreateSessionTaskDomainModelCopyWithImpl<$Res>;
  $Res call({String title, String? description, String? jiraLink});
}

/// @nodoc
class _$CreateSessionTaskDomainModelCopyWithImpl<$Res>
    implements $CreateSessionTaskDomainModelCopyWith<$Res> {
  _$CreateSessionTaskDomainModelCopyWithImpl(this._value, this._then);

  final CreateSessionTaskDomainModel _value;
  // ignore: unused_field
  final $Res Function(CreateSessionTaskDomainModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? jiraLink = freezed,
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
      jiraLink: jiraLink == freezed
          ? _value.jiraLink
          : jiraLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreateSessionTaskDomainModelCopyWith<$Res>
    implements $CreateSessionTaskDomainModelCopyWith<$Res> {
  factory _$CreateSessionTaskDomainModelCopyWith(
          _CreateSessionTaskDomainModel value,
          $Res Function(_CreateSessionTaskDomainModel) then) =
      __$CreateSessionTaskDomainModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String? description, String? jiraLink});
}

/// @nodoc
class __$CreateSessionTaskDomainModelCopyWithImpl<$Res>
    extends _$CreateSessionTaskDomainModelCopyWithImpl<$Res>
    implements _$CreateSessionTaskDomainModelCopyWith<$Res> {
  __$CreateSessionTaskDomainModelCopyWithImpl(
      _CreateSessionTaskDomainModel _value,
      $Res Function(_CreateSessionTaskDomainModel) _then)
      : super(_value, (v) => _then(v as _CreateSessionTaskDomainModel));

  @override
  _CreateSessionTaskDomainModel get _value =>
      super._value as _CreateSessionTaskDomainModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? jiraLink = freezed,
  }) {
    return _then(_CreateSessionTaskDomainModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      jiraLink: jiraLink == freezed
          ? _value.jiraLink
          : jiraLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateSessionTaskDomainModel implements _CreateSessionTaskDomainModel {
  _$_CreateSessionTaskDomainModel(
      {required this.title, this.description, this.jiraLink});

  @override
  final String title;
  @override
  final String? description;
  @override
  final String? jiraLink;

  @override
  String toString() {
    return 'CreateSessionTaskDomainModel(title: $title, description: $description, jiraLink: $jiraLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateSessionTaskDomainModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.jiraLink, jiraLink) ||
                const DeepCollectionEquality()
                    .equals(other.jiraLink, jiraLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(jiraLink);

  @JsonKey(ignore: true)
  @override
  _$CreateSessionTaskDomainModelCopyWith<_CreateSessionTaskDomainModel>
      get copyWith => __$CreateSessionTaskDomainModelCopyWithImpl<
          _CreateSessionTaskDomainModel>(this, _$identity);
}

abstract class _CreateSessionTaskDomainModel
    implements CreateSessionTaskDomainModel {
  factory _CreateSessionTaskDomainModel(
      {required String title,
      String? description,
      String? jiraLink}) = _$_CreateSessionTaskDomainModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get jiraLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateSessionTaskDomainModelCopyWith<_CreateSessionTaskDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
