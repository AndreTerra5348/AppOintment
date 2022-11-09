import 'package:appointment/domain/common/string_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("String Value Validators", () {
    group("NonEmptyStringValidator call", nonEmptyValidatorstringCallTests);
  });
}

void nonEmptyValidatorstringCallTests() {
  // Non Empty
  test(
      "Should return the testing String when validate is call with a non empty string",
      () {
    // Arrange
    const value = "test";

    // Act
    final actual = emptyStringValidation(value);

    // Assert
    expect(actual, isA<Right>());
    expect(actual, const Right(value));
  });

  // Empty
  test(
      "Should return EmptyString Failure when validate is call with a empty string",
      () {
    // Arrange
    const value = "";

    // Act
    final actual = emptyStringValidation(value);

    // Assert
    expect(actual, isA<Left>());
    expect(actual, const Left(StringFailure.empty()));
  });
}
