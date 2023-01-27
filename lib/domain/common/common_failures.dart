/// Domain layer common failures
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failures.freezed.dart';

/// String validation failures.
@freezed
class StringFailure with _$StringFailure {
  /// The [value] is longer than the [length].
  const factory StringFailure.maxLength(
      {required String value, required int length}) = _MaxLengthFailure;

  /// The [value] is shorter than the [length].
  const factory StringFailure.minLength(
      {required String value, required int length}) = _MinLengthFailure;

  /// The [String] is empty.
  const factory StringFailure.empty() = _EmptyStringFailure;

  /// The [value] is not a valid email.
  const factory StringFailure.invalidCharacter({required String value}) =
      _InvalidCharacterFailure;
}

/// [Identifier] validation failures.
@freezed
class IdentifierFailure with _$IdentifierFailure {
  /// The [Identifier] is invalid.
  const factory IdentifierFailure.invalid() = _InvalidIdentifier;
}

/// [Range] validation failures.
@freezed
class RangeFailure with _$RangeFailure {
  /// The [Range] start is after the end.
  const factory RangeFailure.startIsAfterEnd() = _StartIsAfterEnd;

  /// The [Range] start is equal to the end.
  const factory RangeFailure.startIsEqualToEnd() = _StartIsEqualToEnd;

  /// The [Range] is empty.
  const factory RangeFailure.empty() = _EmptyRange;
}
