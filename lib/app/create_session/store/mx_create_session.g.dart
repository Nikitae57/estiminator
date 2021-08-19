// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mx_create_session.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateSessionMx on _CreateSessionMx, Store {
  final _$estimationScalesFutureAtom =
      Atom(name: '_CreateSessionMx.estimationScalesFuture');

  @override
  ObservableFuture<EstimationScalesStateModel>? get estimationScalesFuture {
    _$estimationScalesFutureAtom.reportRead();
    return super.estimationScalesFuture;
  }

  @override
  set estimationScalesFuture(
      ObservableFuture<EstimationScalesStateModel>? value) {
    _$estimationScalesFutureAtom
        .reportWrite(value, super.estimationScalesFuture, () {
      super.estimationScalesFuture = value;
    });
  }

  final _$createSessionFutureAtom =
      Atom(name: '_CreateSessionMx.createSessionFuture');

  @override
  ObservableFuture<void>? get createSessionFuture {
    _$createSessionFutureAtom.reportRead();
    return super.createSessionFuture;
  }

  @override
  set createSessionFuture(ObservableFuture<void>? value) {
    _$createSessionFutureAtom.reportWrite(value, super.createSessionFuture, () {
      super.createSessionFuture = value;
    });
  }

  final _$tasksAtom = Atom(name: '_CreateSessionMx.tasks');

  @override
  ObservableList<TaskStateModel> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<TaskStateModel> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$createdSessionAtom = Atom(name: '_CreateSessionMx.createdSession');

  @override
  bool get createdSession {
    _$createdSessionAtom.reportRead();
    return super.createdSession;
  }

  @override
  set createdSession(bool value) {
    _$createdSessionAtom.reportWrite(value, super.createdSession, () {
      super.createdSession = value;
    });
  }

  final _$loadScalesAsyncAction = AsyncAction('_CreateSessionMx.loadScales');

  @override
  Future<void> loadScales() {
    return _$loadScalesAsyncAction.run(() => super.loadScales());
  }

  final _$onScaleChangeAsyncAction =
      AsyncAction('_CreateSessionMx.onScaleChange');

  @override
  Future<void> onScaleChange(String? newScaleName) {
    return _$onScaleChangeAsyncAction
        .run(() => super.onScaleChange(newScaleName));
  }

  final _$onAddTaskAsyncAction = AsyncAction('_CreateSessionMx.onAddTask');

  @override
  Future<TaskStateModel?> onAddTask() {
    return _$onAddTaskAsyncAction.run(() => super.onAddTask());
  }

  final _$createSessionAsyncAction =
      AsyncAction('_CreateSessionMx.createSession');

  @override
  Future<void> createSession() {
    return _$createSessionAsyncAction.run(() => super.createSession());
  }

  @override
  String toString() {
    return '''
estimationScalesFuture: ${estimationScalesFuture},
createSessionFuture: ${createSessionFuture},
tasks: ${tasks},
createdSession: ${createdSession}
    ''';
  }
}
