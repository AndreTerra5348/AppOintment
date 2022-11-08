import 'package:appointment/domain/common/string_validators.dart';
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
    const value = "test";
    const maxLength = 5;

    const sut = MaxLengthStringValidator(maxLength);

    // Act
    final actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Equal to max
  test(
      "Should return a type of Left<MaxLengthFailure, String> when validate is call with a string whose length is equal to maxLength parameter",
      () {
    // Arrange
    const value = "test";
    const maxLength = 4;
    const sut = MaxLengthStringValidator(maxLength);

    // Act
    final actual = sut(value);

    // Assert
    expect(actual, isA<Left<MaxLengthFailure, String>>());
  });

  // Greater than max
  test(
      "Should return a type of Left<MaxLengthFailure, String> when validate is call with a string whose length is greater than maxLength parameter",
      () {
    // Arrange
    const value = "test";
    const maxLength = 2;
    const sut = MaxLengthStringValidator(maxLength);

    // Act
    final actual = sut(value);

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
    const value = "test";
    const minLength = 3;

    const sut = MinLengthStringValidator(minLength);

    // Act
    final actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Equal to min
  test(
      "Should return the testing String when validate is call with a string whose length is equal minLength parameter",
      () {
    // Arrange
    const value = "val";
    const minLength = 3;

    const sut = MinLengthStringValidator(minLength);

    // Act
    final actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Lower than min
  test(
      "Should return a type of Left<MinLengthFailure, String> when validate is call with a string whose length is lower to minLength parameter",
      () {
    // Arrange
    const value = "test";
    const minLength = 5;
    const sut = MinLengthStringValidator(minLength);

    // Act
    final actual = sut(value);

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
    const value = "test";

    const sut = NonEmptyStringValidator();

    // Act
    final actual = sut(value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });

  // Empty
  test(
      "Should return EmptyString Failure when validate is call with a empty string",
      () {
    // Arrange
    const value = "";

    const sut = NonEmptyStringValidator();

    // Act
    final actual = sut(value);

    // Assert
    expect(actual, isA<Left<EmptyStringFailure, String>>());
  });
}
