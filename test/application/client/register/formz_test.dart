import 'package:appointment/application/client/register/formz.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Client register Formz", () {
    group("NameInput validator", nameInputValidatorFormz);
  });
}

void nameInputValidatorFormz() {
  test(
      "Should error property return null when dirty construtor is used with a valid name",
      () {
    // Arrange
    final nameInput = NameInput.dirty(Name("Bob"));

    // Act

    // Assert
    expect(nameInput.error, isNull);
  });

  test(
      "Should error property return EmptyStringFailure when dirty construtor is used with a invalid name",
      () {
    // Arrange
    final nameInput = NameInput.dirty(Name(""));

    // Act

    // Assert
    expect(nameInput.error, isNotNull);
    expect(nameInput.error, isA<EmptyStringFailure>());
  });
}
