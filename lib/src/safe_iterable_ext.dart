/// Extension to safely handle nullable [Iterable] values.
extension SafeIterable<T> on Iterable<T>? {
  /// Returns the [Iterable] value if not null, or an empty list if null.
  Iterable<T> get safeValue => this ?? [];

  /// Returns the [Iterable] value if not null, or [replacement] if null.
  Iterable<T> safe([Iterable<T>? replacement]) => this ?? replacement ?? [];
}
