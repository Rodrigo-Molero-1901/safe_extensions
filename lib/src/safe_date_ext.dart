import 'package:flutter/material.dart';

/// Extension to safely handle nullable [DateTime] values.
extension SafeDateTime on DateTime? {
  /// Returns the [DateTime] value if not null, or a default of `DateTime(1970, 1, 1)` if null.
  DateTime get safeValue => this ?? DateTime(1970, 1, 1);

  /// Returns the [DateTime] value if not null, or [replacement] if null.
  DateTime safe([DateTime? replacement]) => this ?? replacement ?? safeValue;
}

/// Extension to safely handle nullable [DateTimeRange] values.
extension SafeDateTimeRange on DateTimeRange? {
  /// Returns the [DateTimeRange] value if not null, or a default range if null.
  DateTimeRange get safeValue =>
      this ??
      DateTimeRange(
        start: DateTime(1970, 1, 1),
        end: DateTime(1970, 1, 2),
      );

  /// Returns the [DateTimeRange] value if not null, or [replacement] if null.
  DateTimeRange safe([DateTimeRange? replacement]) =>
      this ?? replacement ?? safeValue;
}
