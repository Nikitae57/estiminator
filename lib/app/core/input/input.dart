abstract class Input<T> {
  T get value;
  void set(T value);
  void validate();
  bool? get isValid;
  void clear();
}
