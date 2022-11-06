import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String Value Validators", () {
    group("StringMaxLengthValidator", stringMaxLengthValidatorTests);
  });
}

void stringMaxLengthValidatorTests() {
  test(
      "Should return a type of Right<StringFailure, String> when validate is call with a string whose length is less than len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 5;

    Validator<StringFailure, String> sut = StringMaxLengthValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right<StringFailure, String>>());
  });

  test(
      "Should return Right(value) when validate is call with a string whose length is less than len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 5;

    Validator<StringFailure, String> sut = StringMaxLengthValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, Right(value));
  });

  test(
      "Should return a type of Left<ExceedingLength, String> when validate is call with a string whose length is equal to len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 4;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<ExceedingLength, String>>());
  });

  test(
      "Should return a type of Left<ExceedingLength, String> when validate is call with a string whose length is greater than len parameter",
      () {
    // Arrange
    String value = "test";
    int length = 2;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(length);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<ExceedingLength, String>>());
  });

  test(
      "Should return Left.ExceedingLength.value equal to testing string when validate is call with invalid string length",
      () {
    // Arrange
    String value = "test";
    int length = 2;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(length);

    // Act
    var actual = sut(value) as Left<ExceedingLength, String>;

    // Assert
    expect(actual.value.value, value);
  });

  test(
      "Should return Left.ExceedingLength.length equal to testing length when validate is call with invalid string length",
      () {
    // Arrange
    String value = "test";
    int length = 2;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(length);

    // Act
    var actual = sut(value) as Left<ExceedingLength, String>;

    // Assert
    expect(actual.value.length, length);
  });
}
