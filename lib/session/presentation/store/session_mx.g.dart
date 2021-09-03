// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_mx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SessionMx on _SessionMx, Store {
  Computed<Future<Stream<FullSessionDomainModel>>>? _$sessionStreamComputed;

  @override
  Future<Stream<FullSessionDomainModel>> get sessionStream =>
      (_$sessionStreamComputed ??=
              Computed<Future<Stream<FullSessionDomainModel>>>(
                  () => super.sessionStream,
                  name: '_SessionMx.sessionStream'))
          .value;

  final _$openedTaskIndexAtom = Atom(name: '_SessionMx.openedTaskIndex');

  @override
  int? get openedTaskIndex {
    _$openedTaskIndexAtom.reportRead();
    return super.openedTaskIndex;
  }

  @override
  set openedTaskIndex(int? value) {
    _$openedTaskIndexAtom.reportWrite(value, super.openedTaskIndex, () {
      super.openedTaskIndex = value;
    });
  }

  final _$resetEstimationsAsyncAction =
      AsyncAction('_SessionMx.resetEstimations');

  @override
  Future<void> resetEstimations() {
    return _$resetEstimationsAsyncAction.run(() => super.resetEstimations());
  }

  final _$_SessionMxActionController = ActionController(name: '_SessionMx');

  @override
  void openTask(int index) {
    final _$actionInfo =
        _$_SessionMxActionController.startAction(name: '_SessionMx.openTask');
    try {
      return super.openTask(index);
    } finally {
      _$_SessionMxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
openedTaskIndex: ${openedTaskIndex},
sessionStream: ${sessionStream}
    ''';
  }
}
