```dart
class MyClass {
  int? _myVariable; // Notice the ?

  MyClass(this._myVariable);

  void doSomething() {
    // Error: Operand of null-aware operation '??' has type 'int?' which excludes null.
    int value = _myVariable ?? 0; // Potential error here
  }
}
```