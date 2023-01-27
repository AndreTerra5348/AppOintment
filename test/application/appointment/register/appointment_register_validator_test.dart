import 'package:appointment/application/appointment/register/appointment_register_validator.dart';
import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('validate() should return Some() if the entity is valid', () {
    // Arrange
    final appointment = Appointment(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime(2021, 1, 1, 10, 0),
        DateTime(2021, 1, 1, 11, 0),
      ),
    );

    final sut = AppointmentRegisterValidator();

    // Act
    final actual = sut.validate(appointment);

    // Assert
    expect(actual, isA<Some<Appointment>>());
  });

  test('validate() should return None() if the entity is invalid', () {
    // Arrange
    final appointment = Appointment(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime(2021, 1, 1, 10, 0),
        DateTime(2021, 1, 1, 9, 0),
      ),
    );

    final sut = AppointmentRegisterValidator();

    // Act
    final actual = sut.validate(appointment);

    // Assert
    expect(actual, isA<None>());
  });
}
