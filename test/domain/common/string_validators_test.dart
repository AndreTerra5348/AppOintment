import 'package:appointment/domain/common/string_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String Validators", () {
    group("nonEmptyStringValidation", nonEmptyValidatorstringCallTests);
  });
}

void nonEmptyValidatorstringCallTests() {
  // Non Empty
  test(
      "Should return the testing Right(value) when validate is call with a non empty string",
      () {
    // Arrange
    const value = "test";

    // Act
    final actual = nonEmptyStringValidation(value);

    // Assert
    expect(actual, isA<Right>());
    expect(actual, const Right(value));
  });

  // Empty
  test(
      "Should return Left(StringFailure.empty()) when validate is call with a empty string",
      () {
    // Arrange
    const value = "";

    // Act
    final actual = nonEmptyStringValidation(value);

    // Assert
    expect(actual, isA<Left>());
    expect(actual, const Left(StringFailure.empty()));
  });
}
