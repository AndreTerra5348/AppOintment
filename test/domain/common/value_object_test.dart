import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Value Object", () {
    group("Validate Method", validateTests);
  });
}

void validateTests() {
  test(
      "Should return a instance of MinLengthFailure when called with StringMinLengthValidator and invalid string value",
      () {
    // Arrange
    String value = "test";
    var minLength = 5;
    Iterable<Validation<StringFailure, String>> validators = [
      StringMinLengthValidator(minLength)
    ];

    // Act
    var actual = ValueObject.validate(validators, value)
        as Left<Iterable<StringFailure>, String>;
    // Assert
    expect(actual.value.any((element) => element is MinLengthFailure), true);
  });

  test(
      "Should return the testing String when called with StringMinLengthValidator and valid string value",
      () {
    // Arrange
    String value = "test";
    var minLength = 0;
    Iterable<Validation<StringFailure, String>> validators = [
      StringMinLengthValidator(minLength)
    ];

    // Act
    var actual = ValueObject.validate(validators, value) as Right;
    // Assert
    expect(actual.value, value);
  });
}
