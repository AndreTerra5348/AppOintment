import 'package:appointment/domain/common/failures.dart';
import 'package:appointment/domain/common/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("nonEmptyStringValidation", () {
    // Non Empty
    test(
        "Return [Right(String)] "
        "When [String] is not empty", () {
      // Arrange
      const value = "test";

      // Act
      final actual = nonEmptyStringValidation(value);

      // Assert
      expect(actual, const Right(value));
    });

    // Empty
    test(
        "Return [Left(StringFailure.empty())] "
        "When [String] is empty", () {
      // Arrange
      const value = "";

      // Act
      final actual = nonEmptyStringValidation(value);

      // Assert
      expect(actual, const Left(StringFailure.empty()));
    });
  });

  group("lettersAndAccentsValidation", () {
    test(
        "Return [Right(value)] "
        "When [String] contains only letters and accents", () {
      // Arrange
      const value = "Bób";

      // Act
      final actual = lettersAndAccentsValidation(value);

      // Assert
      expect(actual, const Right(value));
    });

    test(
        "Return [Left(StringFailure.invalidCharacter(String))] "
        "When [String] contains number", () {
      // Arrange
      const value = "A0";

      // Act
      final actual = lettersAndAccentsValidation(value);

      // Assert
      expect(
        actual,
        const Left(
          StringFailure.invalidCharacter(value: value),
        ),
      );
    });

    test(
        "Return [Left(StringFailure.invalidCharacter(String))] "
        "When [String] contains space", () {
      // Arrange
      const value = "A0 ";

      // Act
      final actual = lettersAndAccentsValidation(value);

      // Assert
      expect(
        actual,
        const Left(
          StringFailure.invalidCharacter(value: value),
        ),
      );
    });
  });
}
