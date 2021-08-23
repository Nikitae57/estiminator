import 'package:estiminator/core/persentation/input/input.dart';
import 'package:mobx/mobx.dart';

part 'data_input.g.dart';

class DataInput<T> = _DataInput<T> with _$DataInput<T>;

abstract class _DataInput<T> with Store implements Input<T?> {
  _DataInput({bool Function(T?)? validator}) : _validator = validator;

  bool Function(T?)? _validator;

  @observable
  @override
  T? value;

  @observable
  @override
  bool? isValid;

  @override
  void set(T? value) => this.value = value;

  @override
  void validate() => isValid = _validator?.call(value) ?? true;

  @override
  void clear() {
    value = null;
    isValid = null;
  }
}
