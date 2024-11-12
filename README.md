# Safe Extensions

A Flutter package that simplifies working with nullable types by offering default values and replacements when `null` is encountered. With `safe_extensions`, you can safely access nullable values and avoid repetitive `null` checks.

## Currently Supported Features

- Handle nullable types such as `bool`, `int`, `double`, `String`, `DateTime`, `DateTimeRange`, `Iterable`, `Map`, `Set`, and `Object`.
- Use `safeValue` getter for defaults and `safe()` method to specify replacements.
- No platform-specific setup required; works across all Flutter-supported platforms.

## Platform Availability

| API        | Android | iOS | Linux | macOS | Windows | Web |
|------------|---------|-----|-------|-------|---------|-----|
| safeValue  | ✅      | ✅  | ✅    | ✅    | ✅      | ✅  |
| safe()     | ✅      | ✅  | ✅    | ✅    | ✅      | ✅  |

## Documentation

For full details, check the [API reference on pub.dev](https://pub.dev/documentation/safe_extensions/latest/).

## Usage

### Single Example

Here’s a quick example to demonstrate `safeValue` and `safe()` with nullable types:

```dart
bool? nullableBool;
int? nullableInt;

Text('Safe Bool: ${nullableBool.safeValue}'), // Outputs `false` if nullableBool is null
Text('Safe Int with Replacement: ${nullableInt.safe(42)}'), // Outputs `42` if nullableInt is null
```

### Detailed Usage

#### Safe Bool
```dart
bool? nullableBool;
bool result = nullableBool.safeValue; // returns false if nullableBool is null
```

#### Safe Int
```dart
int? nullableInt;
int result = nullableInt.safe(100); // returns 100 if nullableInt is null
```

#### Safe Double
```dart
double? nullableDouble;
double result = nullableDouble.safe(0.0); // returns 0.0 if nullableDouble is null
```

#### Safe String
```dart
String? nullableString;
String result = nullableString.safe("default"); // returns "default" if nullableString is null
```

#### Safe DateTime
```dart
DateTime? nullableDateTime;
DateTime result = nullableDateTime.safe(DateTime.now()); // returns current date if nullableDateTime is null
```

#### Safe DateTimeRange
```dart
DateTimeRange? nullableRange;
DateTimeRange result = nullableRange.safe(DateTimeRange(start: DateTime.now(), end: DateTime.now().add(Duration(days: 1)))); // default range if null
```

#### Safe Iterable
```dart
Iterable<int>? nullableList;
Iterable<int> result = nullableList.safe([]); // returns an empty list if nullableList is null
```

#### Safe Map
```dart
Map<String, int>? nullableMap;
Map<String, int> result = nullableMap.safe({}); // returns an empty map if nullableMap is null
```

#### Safe Set
```dart
Set<int>? nullableSet;
Set<int> result = nullableSet.safe({}); // returns an empty set if nullableSet is null
```

#### Safe Object
```dart
Object? nullableObject;
Object result = nullableObject.safe(Object()); // returns a new object if nullableObject is null
```

### Complete Example

In `main.dart`, you can demonstrate all the `safeValue` and `safe()` methods as follows:

```dart
void main() {
  bool? nullableBool;
  int? nullableInt;
  double? nullableDouble;
  String? nullableString;
  DateTime? nullableDateTime;
  DateTimeRange? nullableRange;
  Iterable<int>? nullableList;
  Map<String, int>? nullableMap;
  Set<int>? nullableSet;
  Object? nullableObject;

  print(nullableBool.safeValue); // Output: false
  print(nullableInt.safe(42)); // Output: 42
  print(nullableDouble.safe(0.0)); // Output: 0.0
  print(nullableString.safe("default")); // Output: "default"
  print(nullableDateTime.safe(DateTime.now())); // Output: Current DateTime
  print(nullableRange.safe(DateTimeRange(start: DateTime.now(), end: DateTime.now().add(Duration(days: 1))))); // Default range
  print(nullableList.safe([])); // Output: empty list
  print(nullableMap.safe({})); // Output: empty map
  print(nullableSet.safe({})); // Output: empty set
  print(nullableObject.safe(Object())); // Output: new Object
}
```

## Getting Started

To start using `safe_extensions`, add it as a dependency in your `pubspec.yaml`:

```yaml
dependencies:
  safe_extensions: ^1.0.0
```

Then, import it into your Dart file:

```dart
import 'package:safe_extensions/safe_extensions.dart';
```

For more help getting started with Flutter, view the [online documentation](https://flutter.io/). For plugin code, refer to the [documentation](https://flutter.io/platform-plugins/#edit-code).

## Issues & Contributions

If you encounter any issues or have feature requests, please check [GitHub Issues](https://github.com/username/safe_extensions/issues) or submit a new issue. Contributions are welcome!
