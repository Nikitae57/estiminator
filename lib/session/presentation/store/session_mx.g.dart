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

  final _$areCardsFlippedAtom = Atom(name: '_SessionMx.areCardsFlipped');

  @override
  bool get areCardsFlipped {
    _$areCardsFlippedAtom.reportRead();
    return super.areCardsFlipped;
  }

  @override
  set areCardsFlipped(bool value) {
    _$areCardsFlippedAtom.reportWrite(value, super.areCardsFlipped, () {
      super.areCardsFlipped = value;
    });
  }

  final _$hadUserEstimatedCurrentTaskAtom =
      Atom(name: '_SessionMx.hadUserEstimatedCurrentTask');

  @override
  bool get hadUserEstimatedCurrentTask {
    _$hadUserEstimatedCurrentTaskAtom.reportRead();
    return super.hadUserEstimatedCurrentTask;
  }

  @override
  set hadUserEstimatedCurrentTask(bool value) {
    _$hadUserEstimatedCurrentTaskAtom
        .reportWrite(value, super.hadUserEstimatedCurrentTask, () {
      super.hadUserEstimatedCurrentTask = value;
    });
  }

  final _$areThereEstimationsForCurrentTaskAtom =
      Atom(name: '_SessionMx.areThereEstimationsForCurrentTask');

  @override
  bool get areThereEstimationsForCurrentTask {
    _$areThereEstimationsForCurrentTaskAtom.reportRead();
    return super.areThereEstimationsForCurrentTask;
  }

  @override
  set areThereEstimationsForCurrentTask(bool value) {
    _$areThereEstimationsForCurrentTaskAtom
        .reportWrite(value, super.areThereEstimationsForCurrentTask, () {
      super.areThereEstimationsForCurrentTask = value;
    });
  }

  final _$isSessionFinishedAtom = Atom(name: '_SessionMx.isSessionFinished');

  @override
  bool get isSessionFinished {
    _$isSessionFinishedAtom.reportRead();
    return super.isSessionFinished;
  }

  @override
  set isSessionFinished(bool value) {
    _$isSessionFinishedAtom.reportWrite(value, super.isSessionFinished, () {
      super.isSessionFinished = value;
    });
  }

  final _$resetEstimationsAsyncAction =
      AsyncAction('_SessionMx.resetEstimations');

  @override
  Future<void> resetEstimations() {
    return _$resetEstimationsAsyncAction.run(() => super.resetEstimations());
  }

  final _$pickEstimationAsyncAction = AsyncAction('_SessionMx.pickEstimation');

  @override
  Future<void> pickEstimation(String estimation) {
    return _$pickEstimationAsyncAction
        .run(() => super.pickEstimation(estimation));
  }

  final _$flipTheCardsAsyncAction = AsyncAction('_SessionMx.flipTheCards');

  @override
  Future<void> flipTheCards() {
    return _$flipTheCardsAsyncAction.run(() => super.flipTheCards());
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
areCardsFlipped: ${areCardsFlipped},
hadUserEstimatedCurrentTask: ${hadUserEstimatedCurrentTask},
areThereEstimationsForCurrentTask: ${areThereEstimationsForCurrentTask},
isSessionFinished: ${isSessionFinished},
sessionStream: ${sessionStream}
    ''';
  }
}
