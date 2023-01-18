/// Domain layer common types

/// Represents a range between two values of the same type.
class Range<T> {
  /// The start of the range.
  T start;

  /// The end of the range.
  T end;
  Range({required this.start, required this.end});
}
