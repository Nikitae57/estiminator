// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_input.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataInput<T> on _DataInput<T>, Store {
  final _$valueAtom = Atom(name: '_DataInput.value');

  @override
  T? get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(T? value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$isValidAtom = Atom(name: '_DataInput.isValid');

  @override
  bool? get isValid {
    _$isValidAtom.reportRead();
    return super.isValid;
  }

  @override
  set isValid(bool? value) {
    _$isValidAtom.reportWrite(value, super.isValid, () {
      super.isValid = value;
    });
  }

  @override
  String toString() {
    return '''
value: ${value},
isValid: ${isValid}
    ''';
  }
}
