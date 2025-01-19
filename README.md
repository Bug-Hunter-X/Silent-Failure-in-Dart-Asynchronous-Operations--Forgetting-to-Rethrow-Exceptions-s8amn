# Silent Failure in Dart Asynchronous Operations

This repository demonstrates a common error in Dart asynchronous programming: forgetting to rethrow exceptions caught within a `try-catch` block.  This can mask the root cause of errors, making debugging more difficult.

The `bug.dart` file contains code that fetches data from an API.  The `catch` block prints an error message but does not rethrow the exception.  The `bugSolution.dart` file shows the correct way to handle the exception to allow the calling function to handle it appropriately. 

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  Observe that an error message is printed, but the program continues execution without explicitly indicating failure.
3. Run `bugSolution.dart`. Observe that an exception is rethrown, allowing the calling function to properly handle the error. 