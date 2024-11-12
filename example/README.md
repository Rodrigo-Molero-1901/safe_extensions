# Safe Extensions Example

This example demonstrates how to use the `safe_extensions` package to safely handle nullable types in Flutter. The package provides extensions to easily manage `null` values by offering default values or replacements.

## Usage

The example app shows how each `safeValue` and `safe()` method from `safe_extensions` can be used with nullable types like `bool`, `int`, `double`, `String`, `DateTime`, `DateTimeRange`, `Iterable`, `Map`, `Set`, and `Object`.

### Example Code

The `main.dart` file in this example provides a complete demonstration of each extension. Here's a quick snippet:

```dart
bool? nullableBool;
int? nullableInt;

Text('Safe Bool: **`${nullableBool.safeValue}`**'), // Outputs `false` if nullableBool is null
Text('Safe Int with Replacement: **`${nullableInt.safe(42)}`**'), // Outputs `42` if nullableInt is null
```

For a full overview, run this example app to see the `safeValue` and `safe()` methods in action for each nullable type.

## Running the Example

1. Ensure you have the Flutter SDK installed.
2. Navigate to the `example` folder in your terminal.
3. Run the following command:

   ```bash
   flutter run
   ```

This will launch the app, where you can explore how `safe_extensions` works with different nullable types.

For more details on the available extensions, refer to the package's main [documentation](../README.md).