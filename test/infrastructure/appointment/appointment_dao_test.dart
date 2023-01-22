import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/appointment/appointment_dao.dart';
import 'package:appointment/infrastructure/drift/common/filters.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DriftDb? db;
  late DateTime start;
  late DateTime end;
  setUp(() {
    db = DriftDb(executor: NativeDatabase.memory());
    start = DateTime.now();
    end = DateTime.now().add(const Duration(hours: 1));
  });

  test(
      "Should return all [AppointmentModels] "
      "when getAll is called", () async {
    // Arrange
    final sut = AppointmentDao(db!);
    sut.insert(AppointmentModelsCompanion.insert(
      clientId: Identifier.fromInt(1),
      start: start,
      end: end,
    ));

    sut.insert(AppointmentModelsCompanion.insert(
      clientId: Identifier.fromInt(2),
      start: start,
      end: end,
    ));

    // Act
    final actual = await sut.getAll();

    // Assert
    expect(actual.length, 2);
  });

  test(
      "Should return appointmentModel with same start and end DateTime and id "
      "when insert is called "
      "and getByFilter with [IdentifierFilter] is called with the same id",
      () async {
    // Arrange
    final model = AppointmentModelsCompanion.insert(
      clientId: Identifier.fromInt(1),
      start: start,
      end: end,
    );

    final sut = AppointmentDao(db!);

    // Act
    final id = await sut.insert(model);
    final actual = await sut.getByFilter(Identifier.fromInt(id).toFilter());

    // Assert
    expect(actual.id, Identifier.fromInt(id));
    expect(actual.start, model.start.value);
    expect(actual.end, model.end.value);
  });

  test(
      "Should throw StateError "
      "when getByFilter is called and id do NOT exists", () async {
    // Arrange
    final sut = AppointmentDao(db!);

    // Act
    try {
      await sut.getByFilter(Identifier.fromInt(1).toFilter());
    } catch (e) {
      // Assert
      expect(e, isA<StateError>());
    }
  });

  test(
      "Should return true "
      "when save is called with [IdentifierFilter] and a valid id "
      "and a valid [DateTimeRange]", () async {
    // Arrange
    final sut = AppointmentDao(db!);
    final model = AppointmentModel(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      start: start,
      end: end,
    );

    // Act
    await sut.insert(model);
    final actual = await sut.save(
        model.id.toFilter(),
        model.copyWith(
          start: DateTime.now(),
          end: DateTime.now().add(const Duration(hours: 1)),
        ));

    // Assert
    expect(actual, isTrue);
  });

  test(
      "Should throw SqliteException "
      "when save is called with [IdentifierFilter] and "
      "a valid id and an invalid DateTime", () async {
    // Arrange
    final sut = AppointmentDao(db!);
    final model = AppointmentModel(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      start: start,
      end: end,
    );

    // Act
    await sut.insert(model);

    Object? exception;

    try {
      await sut.save(
        model.id.toFilter(),
        model.copyWith(
          start: DateTime.now(),
          end: DateTime.now().subtract(const Duration(hours: 1)),
        ),
      );
    } catch (e) {
      exception = e;
    }
    expect(exception, isA<SqliteException>());
  });

  test(
      "Should return false "
      "when save is called with [IdentifierFilter] and "
      "an invalid id and a valid DateTime", () async {
    // Arrange
    final sut = AppointmentDao(db!);
    final model = AppointmentModel(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      start: start,
      end: end,
    );

    // Act
    await sut.insert(model);
    final actual = await sut.save(
        Identifier.fromInt(2).toFilter(),
        model.copyWith(
          start: DateTime.now(),
          end: DateTime.now().add(const Duration(hours: 1)),
        ));

    // Assert
    expect(actual, isFalse);
  });

  test(
      "Should return true "
      "when remove is called with [IdentifierFilter] and a valid id", () async {
    // Arrange
    final sut = AppointmentDao(db!);
    final model = AppointmentModel(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      start: start,
      end: end,
    );

    // Act
    await sut.insert(model);
    final actual = await sut.remove(model.id.toFilter());

    // Assert
    expect(actual, isTrue);
  });

  tearDown(() async => await db?.close());
}
