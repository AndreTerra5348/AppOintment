import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String Value Validators", () {
    group("StringMaxLengthValidator", stringMaxLengthValidatorTests);
    group("StringMinLengthValidator", stringMinLengthValidatorTests);
  });
}

void stringMaxLengthValidatorTests() {
  test(
      "Should return a type of Right<StringFailure, String> when validate is call with a string whose length is less than maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 5;

    Validator<StringFailure, String> sut = StringMaxLengthValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right<StringFailure, String>>());
  });

  test(
      "Should return Right(value) when validate is call with a string whose length is less than maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 5;

    Validator<StringFailure, String> sut = StringMaxLengthValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, Right(value));
  });

  test(
      "Should return a type of Left<MaxLengthFailure, String> when validate is call with a string whose length is equal to maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 4;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<MaxLengthFailure, String>>());
  });

  test(
      "Should return a type of Left<MaxLengthFailure, String> when validate is call with a string whose length is greater than maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 2;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<MaxLengthFailure, String>>());
  });

  test(
      "Should return Left with MaxLengthFailure with value equal to testing string when validate is call with invalid string maxLength",
      () {
    // Arrange
    String value = "test";
    int maxLength = 2;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(maxLength);

    // Act
    var actual = sut(value) as Left<MaxLengthFailure, String>;

    // Assert
    expect(actual.value.value, value);
  });

  test(
      "Should return Left with MaxLengthFailure with length equal to testing maxLength when validate is call with invalid string maxLength",
      () {
    // Arrange
    String value = "test";
    int maxLength = 2;
    Validator<StringFailure, String> sut = StringMaxLengthValidator(maxLength);

    // Act
    var actual = sut(value) as Left<MaxLengthFailure, String>;

    // Assert
    expect(actual.value.length, maxLength);
  });
}

void stringMinLengthValidatorTests() {
  test(
      "Should return a type of Right<StringFailure, String> when validate is call with a string whose length is greater than minLength parameter",
      () {
    // Arrange
    String value = "test";
    int minLength = 3;

    Validator<StringFailure, String> sut = StringMinLengthValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right<StringFailure, String>>());
  });

  test(
      "Should return Right(value) when validate is call with a string whose length is greater than minLength parameter",
      () {
    // Arrange
    String value = "test";
    int minLength = 3;

    Validator<StringFailure, String> sut = StringMinLengthValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, Right(value));
  });

  test(
      "Should return Right(value) when validate is call with a string whose length is equal minLength parameter",
      () {
    // Arrange
    String value = "test";
    int minLength = 4;

    Validator<StringFailure, String> sut = StringMinLengthValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, Right(value));
  });

  test(
      "Should return a type of Left<MinLengthFailure, String> when validate is call with a string whose length is lower to minLength parameter",
      () {
    // Arrange
    String value = "test";
    int minLength = 5;
    Validator<StringFailure, String> sut = StringMinLengthValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<MinLengthFailure, String>>());
  });

  test(
      "Should return Left with MinLengthFailure with value equal to testing string when validate is call with invalid string minLength",
      () {
    // Arrange
    String value = "test";
    int minLength = 5;
    Validator<StringFailure, String> sut = StringMinLengthValidator(minLength);

    // Act
    var actual = sut(value) as Left<MinLengthFailure, String>;

    // Assert
    expect(actual.value.value, value);
  });

  test(
      "Should return Left with MinLengthFailure with length equal to testing minLength when validate is call with invalid string minLength",
      () {
    // Arrange
    String value = "test";
    int minLength = 5;
    Validator<StringFailure, String> sut = StringMinLengthValidator(minLength);

    // Act
    var actual = sut(value) as Left<MinLengthFailure, String>;

    // Assert
    expect(actual.value.length, minLength);
  });
}
