```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  void doSomething() {
    // Solution 1: Use if-else to handle null
    int value;
    if (_myVariable == null) {
      value = 0; 
    } else {
      value = _myVariable!; //Using ! operator to assert non-null.
    }
    print('Value: $value');
    
    //Solution 2: Use the ??= operator
    int value2 = 0; //default value
    value2 ??= _myVariable;
    print('Value2: $value2');
    
    //Solution 3: Using late keyword (requires knowing that the variable will be initialized before access)
     late int value3;
     value3 = _myVariable ?? 0; // this is now safe because _myVariable will be assigned before the line reaches here
     print('Value3: $value3');
  }
}

void main() {
  MyClass obj1 = MyClass(10);
  obj1.doSomething();
  MyClass obj2 = MyClass(null);
  obj2.doSomething();
}
```