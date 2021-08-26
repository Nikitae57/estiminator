import 'package:estiminator/core/persentation/input/input.dart';
import 'package:estiminator/core/persentation/input/validation_executor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'validation_executor_test.mocks.dart';

@GenerateMocks([Input])
void main() {
  final inputs = [
    MockInput<String>(),
    MockInput<String>(),
    MockInput<String>(),
  ];
  setUpAll(() {
    inputs.forEach((input) {
      when(input.validate()).thenAnswer((_) {});
    });
  });

  group('ValidationExecutor tests -', () {
    test('''
    GIVEN initially non empty executor
    WHEN performing validation
    THEN every input validation method should be called
    ''', () {
      final executor = ValidationExecutor(inputs: inputs);

      executor.validate();

      inputs.forEach((input) => verify(input.validate()).called(1));
    });

    test('''
    GIVEN initially empty executor with later added inputs
    WHEN performing validation
    THEN every input validation method should be called
    ''', () {
      final executor = ValidationExecutor();
      inputs.forEach(executor.addInput);

      executor.validate();

      inputs.forEach((input) => verify(input.validate()).called(1));
    });
  });
}
