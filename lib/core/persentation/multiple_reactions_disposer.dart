import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class MultipleReactionsDisposer implements Disposable {
  MultipleReactionsDisposer() : _disposers = [];
  MultipleReactionsDisposer.fromList(this._disposers);

  final List<ReactionDisposer> _disposers;

  void add(ReactionDisposer disposer) => _disposers.add(disposer);

  void addAll(List<ReactionDisposer> disposers) {
    disposers.forEach((element) {
      _disposers.add(element);
    });
  }

  @override
  FutureOr onDispose() {
    _disposers.forEach((disposer) => disposer.call());
  }
}
