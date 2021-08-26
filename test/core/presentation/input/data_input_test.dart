import 'package:estiminator/core/persentation/input/data_input.dart';
import 'package:flutter_test/flutter_test.dart';

const _VALUE = 'some value';

void main() {
  group('DataInput tests -', () {
    test('''
    GIVEN DataInput
    WHEN getting it's value before set
    THEN should return null
    ''', () {
      final input = DataInput<String>();

      expect(input.value, isNull);
    });

    test('''
    GIVEN DataInput
    WHEN setting it's value
    THEN the correct value should be set
    ''', () {
      final input = DataInput<String>();

      input.set(_VALUE);

      expect(input.value, equals(_VALUE));
    });

    test('''
    GIVEN DataInput
    WHEN clearing it's value before set
    THEN the value should be null
    ''', () {
      final input = DataInput<String>();

      expect(input.value, isNull);
    });

    test('''
    GIVEN DataInput
    WHEN clearing it's value after set
    THEN the value should be null
    ''', () {
      final input = DataInput<String>();

      input.set(_VALUE);
      input.clear();

      expect(input.value, isNull);
    });

    test('''
    GIVEN DataInput with validation callback that returns false
    WHEN triggering validation
    THEN the validation state should be set to not valid
    ''', () {
      var triggeredCallback = false;
      bool callback(String? input) {
        triggeredCallback = true;
        return false;
      }

      final input = DataInput<String>(validator: callback);

      input.validate();

      expect(triggeredCallback, isTrue);
      expect(input.isValid, isFalse);
    });

    test('''
    GIVEN DataInput with validation callback that returns true
    WHEN triggering validation
    THEN the validation state should be set to valid
    ''', () {
      var triggeredCallback = false;
      bool callback(String? input) {
        triggeredCallback = true;
        return true;
      }

      final input = DataInput<String>(validator: callback);

      input.validate();

      expect(triggeredCallback, isTrue);
      expect(input.isValid, isTrue);
    });
  });
}
