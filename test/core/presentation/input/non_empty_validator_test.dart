import 'package:estiminator/core/persentation/input/non_empty_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('nonEmptyValidator tests -', () {
    test('''
    GIVEN null input
    WHEN calling validator
    THEN it should return false
    ''', () {
      expect(nonEmptyValidator(null), isFalse);
    });

    test('''
    GIVEN empty string
    WHEN calling validator
    THEN it should return false
    ''', () {
      expect(nonEmptyValidator(''), isFalse);
    });

    test('''
    GIVEN string with spaces
    WHEN calling validator
    THEN it should return false
    ''', () {
      expect(nonEmptyValidator('   '), isFalse);
    });

    test('''
    GIVEN string with tabs
    WHEN calling validator
    THEN it should return false
    ''', () {
      expect(nonEmptyValidator('    '), isFalse);
    });

    test('''
    GIVEN non empty string
    WHEN calling validator
    THEN it should return true
    ''', () {
      expect(nonEmptyValidator('123'), isTrue);
    });
  });
}
