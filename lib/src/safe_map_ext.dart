/// Extension to safely handle nullable [Map] values.
extension SafeMap<K, V> on Map<K, V>? {
  /// Returns the [Map] value if not null, or an empty map if null.
  Map<K, V> get safeValue => this ?? {};

  /// Returns the [Map] value if not null, or [replacement] if null.
  Map<K, V> safe([Map<K, V> replacement = const {}]) => this ?? replacement;
}
