import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validate Method", validateTests);
}

void validateTests() {
  test(
      "Should return a instance of MinLengthFailure when called with StringMinLengthValidator and invalid string value",
      () {
    // Arrange
    const value = "test";
    const minLength = 5;
    Iterable<Validation<StringFailure, String>> validators = [
      const MinLengthStringValidator(minLength)
    ];

    // Act
    final actual =
        validate(validators, value) as Left<Iterable<StringFailure>, String>;

    // Assert
    expect(actual.value.any((element) => element is MinLengthFailure), true);
  });

  test(
      "Should return the testing String when called with StringMinLengthValidator and valid string value",
      () {
    // Arrange
    const value = "test";
    const minLength = 0;
    Iterable<Validation<StringFailure, String>> validators = [
      const MinLengthStringValidator(minLength)
    ];

    // Act
    final actual = validate(validators, value);

    // Assert
    expect(actual, isA<Right>());
    expect((actual as Right).value, value);
  });
}
