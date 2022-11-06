import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String Value Validators", () {
    group("StringLenValidator", stringLenValidatorTests);
  });
}

void stringLenValidatorTests() {
  test(
      "Should return Right(value) when validate is call with a string whose length is less than len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 5;

    Validator<StringFailure, String> sut = StringLenValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, Right(value));
  });

  test(
      "Should return Left(StringFailure.exceedingLength) when validate is call with a string whose length is equal to len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 4;
    Validator<StringFailure, String> sut = StringLenValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, const Left(StringFailure.exceedingLength()));
  });

  test(
      "Should return Left(StringFailure.exceedingLength) when validate is call with a string whose length is greater than len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 2;
    Validator<StringFailure, String> sut = StringLenValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, const Left(StringFailure.exceedingLength()));
  });
}
