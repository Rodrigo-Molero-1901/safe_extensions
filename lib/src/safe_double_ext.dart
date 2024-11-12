/// Extension to safely handle nullable [double] values.
extension SafeDouble on double? {
  /// Returns the [double] value if not null, or `0.0` if null.
  double get safeValue => this ?? 0.0;

  /// Returns the [double] value if not null, or [replacement] if null.
  double safe([double replacement = 0.0]) => this ?? replacement;
}
