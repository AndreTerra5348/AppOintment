import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.maxLength(
      {required String value, required int length}) = MaxLengthFailure;
  const factory StringFailure.minLength(
      {required String value, required int length}) = MinLengthFailure;
  const factory StringFailure.empty() = EmptyStringFailure;
  const factory StringFailure.invalidCharacter({required String value}) =
      InvalidCharacterFailure;
}
