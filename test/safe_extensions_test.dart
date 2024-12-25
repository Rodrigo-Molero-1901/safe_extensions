import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safe_extensions/safe_extensions.dart';

void main() {
  group('Safe Extensions', () {
    test('String safe extension', () {
      String? nullableString;
      expect(nullableString.safeValue, '');
      expect(nullableString.safe('empty'), 'empty');
    });

    test('Int safe extension', () {
      int? nullableInt;
      expect(nullableInt.safeValue, 0);
      expect(nullableInt.safe(10), 10);
    });

    test('Double safe extension', () {
      double? nullableDouble;
      expect(nullableDouble.safeValue, 0.0);
      expect(nullableDouble.safe(5.5), 5.5);
    });

    test('Bool safe extension', () {
      bool? nullableBool;
      expect(nullableBool.safeValue, false);
      expect(nullableBool.safe(true), true);
    });

    test('Set safe extension', () {
      Set<int>? nullableSet;
      expect(nullableSet.safeValue, <int>{});
      expect(nullableSet.safe({1, 2}), {1, 2});
    });

    test('Map safe extension', () {
      Map<String, int>? nullableMap;
      expect(nullableMap.safeValue, {});
      expect(nullableMap.safe({'a': 1}), {'a': 1});
    });

    test('Iterable safe extension', () {
      Iterable<int>? nullableIterable;
      expect(nullableIterable.safeValue, []);
      expect(nullableIterable.safe([1, 2]), [1, 2]);
    });

    test('List safe extension', () {
      List<String>? nullableList;
      expect(nullableList.safeValue, []);
      expect(nullableList.safe(['1', '2']), ['1', '2']);
    });

    test('DateTime safe extension', () {
      DateTime? nullableDateTime;
      final defaultDateTime = DateTime(1970, 1, 1);
      expect(nullableDateTime.safeValue, defaultDateTime);
      expect(nullableDateTime.safe(DateTime(2024, 1, 1)), DateTime(2024, 1, 1));
    });

    test('DateTimeRange safe extension', () {
      DateTimeRange? nullableRange;
      final defaultRange = DateTimeRange(
        start: DateTime(1970, 1, 1),
        end: DateTime(1970, 1, 2),
      );
      expect(nullableRange.safeValue, defaultRange);

      final customRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 2),
      );
      expect(nullableRange.safe(customRange), customRange);
    });

    test('Null check extensions', () {
      String? nullableString;
      expect(nullableString.isNull, true);
      expect(nullableString.isNotNull, false);

      String? nonNullableString = 'Hello';
      expect(nonNullableString.isNull, false);
      expect(nonNullableString.isNotNull, true);
    });
  });
}
