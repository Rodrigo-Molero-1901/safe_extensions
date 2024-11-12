# safe_extensions

A Flutter package that simplifies working with nullable types by offering default values and replacements when `null` is encountered. With `safe_extensions`, you can safely access nullable values and avoid repetitive `null` checks.

## Currently Supported Features

- Handle nullable types such as `bool`, `int`, `double`, `String`, `DateTime`, `Iterable`, `Map`, and `Set`.
- Use `safeValue` getter for defaults and `safe()` method to specify replacements.
- No platform-specific setup required; works across all Flutter-supported platforms.

## Platform Availability

| API        | Android | iOS | Linux | macOS | Windows | Web |
|------------|---------|-----|-------|-------|---------|-----|
| safeValue  | ✅      | ✅  | ✅    | ✅    | ✅      | ✅  |
| safe()     | ✅      | ✅  | ✅    | ✅    | ✅      | ✅  |

## Documentation

For full details, check the [API reference on pub.dev](https://pub.dev/documentation/safe_extensions/latest/).

## Default Values by Type

Here's a summary of the default values provided by `safeValue` for each nullable type:

| Type          | Default Value         |
|---------------|-----------------------|
| `bool`        | `false`               |
| `int`         | `0`                   |
| `double`      | `0.0`                 |
| `String`      | `""` (empty string)   |
| `DateTime`    | `DateTime(1970, 1, 1)`|
| `Iterable`    | `[]` (empty iterable) |
| `Map`         | `{}` (empty map)      |
| `Set`         | `{}` (empty set)      |

## Usage

### Safe Bool
Using `safeValue` and `safe()` for `bool`:

```dart
bool? nullableBool;
bool resultSafeValue = nullableBool.safeValue; // Returns false if nullableBool is null
bool resultSafeMethod = nullableBool.safe(true); // Returns true if nullableBool is null
```

### Safe Int
Using `safeValue` and `safe()` for `int`:

```dart
int? nullableInt;
int resultSafeValue = nullableInt.safeValue; // Returns 0 if nullableInt is null
int resultSafeMethod = nullableInt.safe(100); // Returns 100 if nullableInt is null
```

### Safe Double
Using `safeValue` and `safe()` for `double`:

```dart
double? nullableDouble;
double resultSafeValue = nullableDouble.safeValue; // Returns 0.0 if nullableDouble is null
double resultSafeMethod = nullableDouble.safe(5.5); // Returns 5.5 if nullableDouble is null
```

### Safe String
Using `safeValue` and `safe()` for `String`:

```dart
String? nullableString;
String resultSafeValue = nullableString.safeValue; // Returns an empty string if nullableString is null
String resultSafeMethod = nullableString.safe("default"); // Returns "default" if nullableString is null
```

### Safe DateTime
Using `safeValue` and `safe()` for `DateTime`:

```dart
DateTime? nullableDateTime;
DateTime resultSafeValue = nullableDateTime.safeValue; // Returns DateTime(1970, 1, 1) if nullableDateTime is null
DateTime resultSafeMethod = nullableDateTime.safe(DateTime.now()); // Returns current date if nullableDateTime is null
```

### Safe Iterable
Using `safeValue` and `safe()` for `Iterable`:

```dart
Iterable<int>? nullableList;
Iterable<int> resultSafeValue = nullableList.safeValue; // Returns empty list if nullableList is null
Iterable<int> resultSafeMethod = nullableList.safe([1, 2, 3]); // Returns [1, 2, 3] if nullableList is null
```

### Safe Map
Using `safeValue` and `safe()` for `Map`:

```dart
Map<String, int>? nullableMap;
Map<String, int> resultSafeValue = nullableMap.safeValue; // Returns empty map if nullableMap is null
Map<String, int> resultSafeMethod = nullableMap.safe({"key": 1}); // Returns {"key": 1} if nullableMap is null
```

### Safe Set
Using `safeValue` and `safe()` for `Set`:

```dart
Set<int>? nullableSet;
Set<int> resultSafeValue = nullableSet.safeValue; // Returns empty set if nullableSet is null
Set<int> resultSafeMethod = nullableSet.safe({5, 10}); // Returns {5, 10} if nullableSet is null
```

## Getting Started

To start using `safe_extensions`, add it as a dependency in your `pubspec.yaml`:

```yaml
dependencies:
  safe_extensions: ^1.0.1
```

Then, import it into your Dart file:

```dart
import 'package:safe_extensions/safe_extensions.dart';
```

For more help getting started with Flutter, view the [online documentation](https://flutter.io/). For plugin code, refer to the [documentation](https://flutter.io/platform-plugins/#edit-code).

## Issues & Contributions

If you encounter any issues or have feature requests, please check [GitHub Issues](https://github.com/username/safe_extensions/issues) or submit a new issue. Contributions are welcome!
