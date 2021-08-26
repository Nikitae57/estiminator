import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'package:estiminator/core/persentation/widgets/bottom_button.dart';

const _TEXT = 'Button text';

void main() {
  group('BottomButton tests -', () {
    testGoldens('BottomButton with text', (tester) async {
      await loadAppFonts();
      final builder = GoldenBuilder.grid(columns: 1, widthToHeightRatio: 1)
        ..addScenario('Text only', const BottomButton(child: Text(_TEXT)))
        ..addScenario(
          'Icon and text',
          BottomButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.accessibility_new_outlined),
                Text(_TEXT),
              ],
            ),
          ),
        );
      await tester.pumpWidgetBuilder(builder.build());

      await screenMatchesGolden(tester, 'bottom_button_grid', autoHeight: true);
    });

    testWidgets('''
    GIVEN bottom button with set click callback
    WHEN it is clicked
    THEN callback should be triggered
    ''', (tester) async {
      var triggeredCallback = false;
      await tester.pumpWidget(MaterialApp(
        home: BottomButton(
          onPressed: () => triggeredCallback = true,
        ),
      ));

      await tester.tap(find.byType(BottomButton));

      expect(triggeredCallback, isTrue);
    });
  });
}
