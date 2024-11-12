/// Extension to safely handle nullable [Object] values.
extension SafeObject<T> on T? {
  /// Returns the object if not null, or [replacement] if null.
  T safe([T? replacement]) => this ?? replacement as T;
}
