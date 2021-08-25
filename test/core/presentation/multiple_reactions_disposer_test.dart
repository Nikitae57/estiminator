import 'package:estiminator/core/persentation/multiple_reactions_disposer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'multiple_reactions_disposer_test.mocks.dart';

@GenerateMocks([ReactionDisposer])
void main() {
  group('MultipleReactionsDisposer tests -', () {
    test('''
    GIVEN multidisposer with added disposers
    WHEN disposing it
    THEN every disposer should be triggered
    ''', () {
      final disposer1 = MockReactionDisposer();
      final disposer2 = MockReactionDisposer();
      final multidisposer = MultipleReactionsDisposer();
      multidisposer.addAll([disposer1, disposer2]);

      multidisposer.onDispose();

      verify(disposer1.call()).called(1);
      verify(disposer2.call()).called(1);
    });
  });
}
