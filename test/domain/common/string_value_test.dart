import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String Value Validators", () {
    group("MaxLengthStringValidator call", maxLengthstringValidatorCallTests);
    group("MinLengthStringValidator call", minLengthStringValidatorCallTests);
    group("NonEmptyStringValidator call", nonEmptyValidatorstringCallTests);
  });
}

void maxLengthstringValidatorCallTests() {
  // Lower than max
  test(
      "Should return the testing String when validate is call with a string whose length is less than maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 5;

    Validator<StringFailure, String> sut = MaxLengthStringValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Equal to max
  test(
      "Should return a type of Left<MaxLengthFailure, String> when validate is call with a string whose length is equal to maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 4;
    Validator<StringFailure, String> sut = MaxLengthStringValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<MaxLengthFailure, String>>());
  });

  // Greater than max
  test(
      "Should return a type of Left<MaxLengthFailure, String> when validate is call with a string whose length is greater than maxLength parameter",
      () {
    // Arrange
    String value = "test";
    int maxLength = 2;
    Validator<StringFailure, String> sut = MaxLengthStringValidator(maxLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<MaxLengthFailure, String>>());
  });
}

void minLengthStringValidatorCallTests() {
  // Greater than min
  test(
      "Should return the testing String when validate is call with a string whose length is greater than minLength parameter",
      () {
    // Arrange
    String value = "test";
    int minLength = 3;

    Validator<StringFailure, String> sut = MinLengthStringValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Equal to min
  test(
      "Should return the testing String when validate is call with a string whose length is equal minLength parameter",
      () {
    // Arrange
    String value = "val";
    int minLength = 3;

    Validator<StringFailure, String> sut = MinLengthStringValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Lower than min
  test(
      "Should return a type of Left<MinLengthFailure, String> when validate is call with a string whose length is lower to minLength parameter",
      () {
    // Arrange
    String value = "test";
    int minLength = 5;
    Validator<StringFailure, String> sut = MinLengthStringValidator(minLength);

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<MinLengthFailure, String>>());
  });
}

void nonEmptyValidatorstringCallTests() {
  // Non Empty
  test(
      "Should return the testing String when validate is call with a non empty string",
      () {
    // Arrange
    String value = "test";

    Validator<StringFailure, String> sut = const NonEmptyStringValidator();

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Empty
  test(
      "Should return EmptyString Failure when validate is call with a empty string",
      () {
    // Arrange
    String value = "";

    Validator<StringFailure, String> sut = const NonEmptyStringValidator();

    // Act
    var actual = sut(value);

    // Assert
    expect(actual, isA<Left<EmptyStringFailure, String>>());
  });
}
