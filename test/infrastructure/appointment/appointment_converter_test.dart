import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/appointment/appointment_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      "Should return entity with id and properties equal to the model "
      "When [toEntity] is called with model", () {
    // Arrange
    final model = AppointmentModel(
      id: Identifier.fromInt(0),
      clientId: Identifier.fromInt(0),
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 1)),
    );
    final sut = AppointmentConverter();

    // Act
    final actual = sut.toEntity(model);

    // Assert
    expect(actual.id, model.id);
    expect(actual.clientId, model.clientId);
    expect(actual.dateTimeRange.getOrThrow().start, model.start);
    expect(actual.dateTimeRange.getOrThrow().end, model.end);
  });

  test(
      "Should return [UpdateCompanion] with the same properties as the entity "
      "When toCompanion is called with entity ", () {
    // Arrange
    final entity = Appointment.withoutIdentifier(
      clientId: Identifier.fromInt(0),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(const Duration(hours: 1)),
      ),
    );
    final sut = AppointmentConverter();

    // Act
    final actual = sut.toCompanion(entity);

    // Assert
    expect(actual, isA<AppointmentModelsCompanion>());
    expect(actual.clientId.value, entity.clientId);
    expect(actual.start.value, entity.dateTimeRange.getOrThrow().start);
    expect(actual.end.value, entity.dateTimeRange.getOrThrow().end);
  });

  test(
      "Should return entity with same properties and id "
      "When [copyWithId] called with entity and [Identifier]", () {
    // Arrange
    final id = Identifier.fromInt(0);
    final entity = Appointment.withoutIdentifier(
      clientId: Identifier.fromInt(0),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(const Duration(hours: 1)),
      ),
    );
    final sut = AppointmentConverter();

    // Act
    final actual = sut.copyWithId(entity, id);

    // Assert
    expect(actual.id, id);
    expect(actual.clientId, entity.clientId);
    expect(actual.dateTimeRange, entity.dateTimeRange);
  });
}
