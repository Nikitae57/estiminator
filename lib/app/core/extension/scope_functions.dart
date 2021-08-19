ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctions<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T) function) {
    return function(this);
  }

  T also(void Function(T) function) {
    function(this);
    return this;
  }
}
