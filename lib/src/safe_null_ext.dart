/// Extension to check if an [Object] is null.
extension NullCheck on Object? {
  /// Returns `true` if the object is null.
  bool get isNull => this == null;

  /// Returns `true` if the object is not null.
  bool get isNotNull => this != null;
}
