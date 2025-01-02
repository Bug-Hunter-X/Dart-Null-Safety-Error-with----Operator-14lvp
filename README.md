# Dart Null Safety Error with ?? Operator

This repository demonstrates a common null safety error in Dart when using the null-aware operator (`??`) with nullable types. The error arises when the compiler cannot statically guarantee that a nullable variable will not be null.

The `bug.dart` file contains the code exhibiting the error.  The `bugSolution.dart` file provides a solution.

## How to Reproduce

1. Clone this repository.
2. Open `bug.dart` in your Dart editor.
3. Run the code. You will see a compiler error indicating that the null-aware operator is used on a variable that may be null.

## Solution

The solution involves ensuring that the variable is handled appropriately to address the possibility of it being null. This can be done by explicitly checking for null before using the value or by providing a default value in a different way.