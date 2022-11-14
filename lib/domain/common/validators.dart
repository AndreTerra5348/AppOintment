import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validators.freezed.dart';

Either<StringFailure, String> nonEmptyStringValidation(String value) =>
    value.isEmpty ? const Left(StringFailure.empty()) : Right(value);

final lettersAndAccentsRegex = RegExp("[A-zÀ-ú]+");
Either<StringFailure, String> lettersAndAccentsValidation(String value) =>
    !lettersAndAccentsRegex.hasMatch(value)
        ? Left(StringFailure.invalidCharacter(value: value))
        : Right(value);

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
