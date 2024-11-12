/// Extension to safely handle nullable [bool] values.
extension SafeBool on bool? {
  /// Returns the [bool] value if not null, or `false` if null.
  bool get safeValue => this ?? false;

  /// Returns the [bool] value if not null, or [replacement] if null.
  bool safe([bool replacement = false]) => this ?? replacement;
}
