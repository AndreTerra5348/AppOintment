import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should implements [EntityMixin]", () {
    var sut = Appointment.withoutIdentifier(
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(
          const Duration(hours: 1),
        ),
      ),
    );
    expect(sut, isA<EntityMixin>());
  });

  test(
      "Given a valid [Identifier] and [DateTimeRange]"
      "When isValid is called, "
      "Should return true", () {
    // Arrange
    var sut = Appointment(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(
          const Duration(hours: 1),
        ),
      ),
    );

    // Act

    // Assert
    expect(sut.isValid, isTrue);
  });

  test(
      "Given a invalid [Identifier] and [DateTimeRange]"
      "When isValid is called, "
      "Should return false", () {
    // Arrange
    var sut = Appointment(
      id: Identifier(),
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(
          const Duration(hours: 1),
        ),
      ),
    );

    // Act

    // Assert
    expect(sut.isValid, isFalse);
  });

  test(
      "Given a valid [Identifier] and invalid [DateTimeRange]"
      "When isValid is called, "
      "Should return false", () {
    // Arrange
    var sut = Appointment(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now(),
      ),
    );

    // Act

    // Assert
    expect(sut.isValid, isFalse);
  });
}
