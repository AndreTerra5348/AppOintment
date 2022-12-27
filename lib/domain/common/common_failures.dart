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

/// Uid validation failures.
@freezed
class UidFailure with _$UidFailure {
  /// The [Uid] is invalid.
  const factory UidFailure.invalid() = _InvalidUid;
}
