/// Extension to safely handle nullable [String] values.
extension SafeString on String? {
  /// Returns the [String] value if not null, or an empty string if null.
  String get safeValue => this ?? '';

  /// Returns the [String] value if not null, or [replacement] if null.
  String safe([String replacement = '']) => this ?? replacement;
}
