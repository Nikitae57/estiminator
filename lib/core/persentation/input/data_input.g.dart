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

  final _$_DataInputActionController = ActionController(name: '_DataInput');

  @override
  void set(T? value) {
    final _$actionInfo =
        _$_DataInputActionController.startAction(name: '_DataInput.set');
    try {
      return super.set(value);
    } finally {
      _$_DataInputActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validate() {
    final _$actionInfo =
        _$_DataInputActionController.startAction(name: '_DataInput.validate');
    try {
      return super.validate();
    } finally {
      _$_DataInputActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo =
        _$_DataInputActionController.startAction(name: '_DataInput.clear');
    try {
      return super.clear();
    } finally {
      _$_DataInputActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
isValid: ${isValid}
    ''';
  }
}
