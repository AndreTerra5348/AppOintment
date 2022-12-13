import 'package:appointment/domain/common/failures.dart';
import 'package:dartz/dartz.dart';

Either<StringFailure, String> nonEmptyStringValidation(String value) =>
    value.isEmpty ? const Left(StringFailure.empty()) : Right(value);

final notLettersAndAccentsRegex = RegExp("(?![A-zÀ-ú]+).");
Either<StringFailure, String> lettersAndAccentsValidation(String value) =>
    notLettersAndAccentsRegex.hasMatch(value)
        ? Left(StringFailure.invalidCharacter(value: value))
        : Right(value);
