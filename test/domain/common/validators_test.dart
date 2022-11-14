import 'package:appointment/domain/common/failures.dart';
import 'package:appointment/domain/common/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validators", () {
    group("nonEmptyStringValidation", nonEmptyValidatorstringCallTests);
    group("lettersAndAccentsValidation", lettersAndAccentsValidationTests);
  });
}

void nonEmptyValidatorstringCallTests() {
  // Non Empty
  test(
      "Should return the testing [Right(value)] when validate is call with a non empty string",
      () {
    // Arrange
    const value = "test";

    // Act
    final actual = nonEmptyStringValidation(value);

    // Assert
    expect(actual, const Right(value));
  });

  // Empty
  test(
      "Should return [Left(StringFailure.empty())] when validate is call with a empty string",
      () {
    // Arrange
    const value = "";

    // Act
    final actual = nonEmptyStringValidation(value);

    // Assert
    expect(actual, const Left(StringFailure.empty()));
  });
}

void lettersAndAccentsValidationTests() {
  test("Should return [Right(value)] when validate is call with valid string",
      () {
    // Arrange
    const value = "a";

    // Act
    final actual = lettersAndAccentsValidation(value);

    // Assert
    expect(actual, const Right(value));
  });

  test("""Should return [Left(StringFailure.invalidCharacter(value))] 
          when validate is call with invalid string""", () {
    // Arrange
    const value = "A0";

    // Act
    final actual = lettersAndAccentsValidation(value);

    // Assert
    expect(actual, const Left(StringFailure.invalidCharacter(value: value)));
  });
}
