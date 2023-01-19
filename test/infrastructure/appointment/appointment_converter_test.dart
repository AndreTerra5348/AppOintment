import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/appointment/appointment_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      "Should return [Appointment] with Id and DateTimeRange "
      "When [toEntity] is called with [AppointmentModel]", () {
    // Arrange

    final model = AppointmentModel(
      id: Identifier.fromInt(0),
      start: DateTime.now(),
      end: DateTime.now().add(
        const Duration(hours: 1),
      ),
    );
    final sut = AppointmentConverter();

    // Act
    final actual = sut.toEntity(model);

    // Assert
    expect(actual.id, model.id);
    expect(actual.dateTimeRange.getOrThrow().start, model.start);
    expect(actual.dateTimeRange.getOrThrow().end, model.end);
  });

  test(
      "Should return [Appointment] with same name and a new id "
      "When [toEntityWithId] called with [Appointment] and the new [Identifier]",
      () {
    // Arrange
    final id = Identifier.fromInt(0);
    final entity = Appointment(
      id: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(
          const Duration(hours: 1),
        ),
      ),
    );
    final sut = AppointmentConverter();

    // Act
    final actual = sut.toEntityWithId(entity, id);

    // Assert
    expect(actual.id, id);
    expect(actual.dateTimeRange.getOrThrow().start,
        entity.dateTimeRange.getOrThrow().start);
    expect(actual.dateTimeRange.getOrThrow().end,
        entity.dateTimeRange.getOrThrow().end);
  });

  test(
      "Should return [AppointmentModelsCompanion] with the same name as the entity "
      "When toUpdateCompanion called with [Appointment] ", () {
    // Arrange
    final entity = Appointment(
      id: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime.now(),
        DateTime.now().add(
          const Duration(hours: 1),
        ),
      ),
    );
    final sut = AppointmentConverter();

    // Act
    final actual = sut.toUpdateCompanion(entity);

    // Assert
    expect(actual, isA<AppointmentModelsCompanion>());
    expect(actual.start.value, entity.dateTimeRange.getOrThrow().start);
    expect(actual.end.value, entity.dateTimeRange.getOrThrow().end);
  });
}
