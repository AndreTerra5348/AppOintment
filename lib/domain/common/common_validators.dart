/// Domain layer common validators
import 'package:appointment/domain/common/common_failures.dart';
import 'package:dartz/dartz.dart';

/// Validates a [String] [value] to be non-empty.
Either<StringFailure, String> nonEmptyStringValidation(String value) =>
    value.isEmpty ? const Left(StringFailure.empty()) : Right(value);

/// Regex to check if a [String] do NOT contains letters and accents.
final notLettersAndAccentsRegex = RegExp("(?![A-zÀ-ú]+).");

/// Validates a [String] [value] to be only letters and accents.
Either<StringFailure, String> lettersAndAccentsValidation(String value) =>
    notLettersAndAccentsRegex.hasMatch(value)
        ? Left(StringFailure.invalidCharacter(value: value))
        : Right(value);
