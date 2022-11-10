import 'package:appointment/application/client/register/form.dart';
import 'package:appointment/application/common/form_submission_status.dart';
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

    test("initial status should be initial", () {
      // Arrange
      final form = ClientRegisterForm.initial();
      // Act

      // Assert
      expect(form.status, FormSubmissionStatus.initial);
    });
  });
}
