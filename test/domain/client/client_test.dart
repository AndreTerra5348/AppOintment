import 'package:appointment/domain/client/client.dart';
import 'package:appointment/domain/common/string_value.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Value Object", () {
    group("Name", firstNameTests);
  });
}

void firstNameTests() {
  // Non empty name
  group("value", () {
    test(
        "Should return a type of Right<Iterable<StringFailure>, String>, String> when name length is equal to 1",
        () {
      // Arrange
      const name = "J";
      final sut = Name(name);

      // Act
      final actual = sut.value;

      // Assert
      expect(actual, isA<Right>());
      expect((actual as Right).value, name);
    });

    // Empty name
    test(
        "Should return a type of Left<Iterable<StringFailure>, String> when name length is less than 1",
        () {
      // Arrange
      const name = "";
      final sut = Name(name);

      // Act
      final actual = sut.value;

      // Assert
      expect(actual, isA<Left<Iterable<StringFailure>, String>>());
    });
  });
}