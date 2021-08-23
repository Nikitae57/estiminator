import 'package:estiminator/core/persentation/input/input.dart';

class ValidationExecutor {
  ValidationExecutor({List<Input>? inputs}) : _inputs = inputs ?? [];
  List<Input> _inputs;

  void addInput(Input input) => _inputs.add(input);

  void validate() {
    _inputs.forEach((input) => input.validate());
  }
}
