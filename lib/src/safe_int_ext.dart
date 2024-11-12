/// Extension to safely handle nullable [int] values.
extension SafeInt on int? {
  /// Returns the [int] value if not null, or `0` if null.
  int get safeValue => this ?? 0;

  /// Returns the [int] value if not null, or [replacement] if null.
  int safe([int replacement = 0]) => this ?? replacement;
}
