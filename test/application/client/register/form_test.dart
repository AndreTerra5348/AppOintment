import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientRegisterForm", () {
    test("initial name value should be Left(EmptyStringFailure)", () {
      // Arrange
      final form = ClientRegisterForm.initial();
      // Act

      // Assert
      expect(form.name.value, const Left(StringFailure.empty()));
    });

    test("initial submissionStatus should be initial", () {
      // Arrange
      final form = ClientRegisterForm.initial();
      // Act

      // Assert
      expect(form.submissionStatus, FormSubmissionStatus.initial);
    });

    test("initial isValid should be false", () {
      // Arrange
      final form = ClientRegisterForm.initial();
      // Act

      // Assert
      expect(form.isValid, isFalse);
    });
  });
}
