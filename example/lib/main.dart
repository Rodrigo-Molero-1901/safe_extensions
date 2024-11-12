import 'package:flutter/material.dart';
import 'package:safe_extensions/safe_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? nullableBool;
  int? nullableInt;
  double? nullableDouble;
  String? nullableString;
  DateTime? nullableDateTime;
  DateTimeRange? nullableDateTimeRange;
  Iterable<int>? nullableIterable;
  Map<String, int>? nullableMap;
  Set<String>? nullableSet;
  Object? nullableObject;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Safe Extensions Example'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Safe Bool: ${nullableBool.safeValue}'),
                  Text(
                      'Safe Bool with Replacement: ${nullableBool.safe(true)}'),
                  const SizedBox(height: 10),
                  Text('Safe Int: ${nullableInt.safeValue}'),
                  Text('Safe Int with Replacement: ${nullableInt.safe(42)}'),
                  const SizedBox(height: 10),
                  Text('Safe Double: ${nullableDouble.safeValue}'),
                  Text(
                      'Safe Double with Replacement: ${nullableDouble.safe(3.14)}'),
                  const SizedBox(height: 10),
                  Text('Safe String: "${nullableString.safeValue}"'),
                  Text(
                      'Safe String with Replacement: "${nullableString.safe("Hello")}"'),
                  const SizedBox(height: 10),
                  Text('Safe DateTime: ${nullableDateTime.safeValue}'),
                  Text(
                      'Safe DateTime with Replacement: ${nullableDateTime.safe(DateTime(2023, 12, 25))}'),
                  const SizedBox(height: 10),
                  Text(
                      'Safe DateTimeRange: ${nullableDateTimeRange.safeValue}'),
                  Text(
                      'Safe DateTimeRange with Replacement: ${nullableDateTimeRange.safe(DateTimeRange(start: DateTime(2022, 1, 1), end: DateTime(2022, 12, 31)))}'),
                  const SizedBox(height: 10),
                  Text('Safe Iterable: ${nullableIterable.safeValue}'),
                  Text(
                      'Safe Iterable with Replacement: ${nullableIterable.safe([
                        1,
                        2,
                        3
                      ])}'),
                  const SizedBox(height: 10),
                  Text('Safe Map: ${nullableMap.safeValue}'),
                  Text('Safe Map with Replacement: ${nullableMap.safe({
                        "one": 1,
                        "two": 2
                      })}'),
                  const SizedBox(height: 10),
                  Text('Safe Set: ${nullableSet.safeValue}'),
                  Text('Safe Set with Replacement: ${nullableSet.safe({
                        "apple",
                        "banana"
                      })}'),
                  const SizedBox(height: 10),
                  Text('Nullable Object is null: ${nullableObject.isNull}'),
                  Text(
                      'Nullable Object is not null: ${nullableObject.isNotNull}'),
                  const SizedBox(height: 10),
                  Text(
                      'Safe Object with Replacement: ${nullableObject.safe("Fallback Object")}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
