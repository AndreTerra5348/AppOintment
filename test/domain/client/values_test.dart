import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/failures.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Value Object", () {
    group("Name", nameTests);
  });
}

void expectRight(String name) {
  final sut = Name(name);

  // Act
  final actual = sut.value;

  // Assert
  expect(actual, isA<Right<StringFailure, String>>());
  expect(actual, Right(name));
  expect(sut.isValid, isTrue);
  expect(sut.isNotValid, isFalse);
  expect(sut.getOrThrow(), name);
}

void expectLeft(String name) {
  final sut = Name(name);

  // Act
  final actual = sut.value;

  // Assert
  expect(actual, isA<Left<StringFailure, String>>());
  expect(sut.isValid, isFalse);
  expect(sut.isNotValid, isTrue);
  expect(() => sut.getOrThrow(), throwsA(isA<UnexpectedValueError>()));
}

void nameTests() {
  test("Should return Right(value), when name length is equal to 1", () {
    // Arrange
    const name = "B";
    expectRight(name);
  });
  test(
      "Should return a type of Left<StringFailure, String>, String> when name length is less than 1",
      () {
    // Arrange
    const name = "";
    expectLeft(name);
  });

  test("Should return Right(value) when name contains accents", () {
    // Arrange
    const name = "André";
    expectRight(name);
  });

  test(
      "Should return a type of Left<StringFailure, String>, String> when name contains number",
      () {
    // Arrange
    const name = "A0";
    expectLeft(name);
  });
}
