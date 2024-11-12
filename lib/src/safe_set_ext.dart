/// Extension to safely handle nullable [Set] values.
extension SafeSet<T> on Set<T>? {
  /// Returns the [Set] value if not null, or an empty set if null.
  Set<T> get safeValue => this ?? {};

  /// Returns the [Set] value if not null, or [replacement] if null.
  Set<T> safe([Set<T>? replacement]) => this ?? replacement ?? {};
}
