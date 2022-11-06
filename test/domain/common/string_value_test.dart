import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String value validator", () {
    test(
        "StringLenValidator Should return Right(value) when validate is call with a string whose length is less than len parameter",
        () {
      // Arrange
      String value = "test";

      Validator<StringFailure, String> sut = StringLenValidator(5);

      // Act
      var actual = sut(value);

      // Assert
      expect(actual, Right(value));
    });

    test(
        "StringLenValidator Should return Left(StringFailure.exceedingLength) when validate is call with a string whose length is equal to len parameter",
        () {
      // Arrange
      String value = "test";

      Validator<StringFailure, String> sut = StringLenValidator(4);

      // Act
      var actual = sut(value);

      // Assert
      expect(actual, const Left(StringFailure.exceedingLength()));
    });

    test(
        "StringLenValidator Should return Left(StringFailure.exceedingLength) when validate is call with a string whose length greater than len parameter",
        () {
      // Arrange
      String value = "test";

      Validator<StringFailure, String> sut = StringLenValidator(2);

      // Act
      var actual = sut(value);

      // Assert
      expect(actual, const Left(StringFailure.exceedingLength()));
    });
  });
}
