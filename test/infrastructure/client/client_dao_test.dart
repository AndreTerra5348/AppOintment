import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_errors.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/client/client_dao.dart';
import 'package:appointment/infrastructure/drift/common/filters.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart' as drift;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DriftDb? db;
  late Name bobName;
  late Name joeName;
  late Identifier identifier;
  setUp(() {
    db = DriftDb(executor: NativeDatabase.memory());
    bobName = Name("Bob");
    joeName = Name("Joe");
    identifier = Identifier.fromInt(1);
  });

  test(
      "Should return all [ClientModels] "
      "when getAll is called", () async {
    // Arrange
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: bobName));
    await sut.insert(ClientModelsCompanion.insert(name: joeName));

    // Act
    final actual = await sut.getAll();

    // Assert
    expect(actual.length, 2);
  });

  test(
      "Should return clientModel with same name and id "
      "when insert is called "
      "and getByFilter with [IdentifierFilter] is called with the same id",
      () async {
    // Arrange
    final model = ClientModelsCompanion.insert(name: bobName);
    final sut = ClientDao(db!);

    // Act
    final id = await sut.insert(model);
    final actual = await sut.getByFilter(Identifier.fromInt(id).toFilter());

    // Assert
    expect(actual.id, identifier);
    expect(actual.name, model.name.value);
  });

  test(
      "Should throw StateError "
      "when getByFilter is called and id do NOT exists", () async {
    // Arrange
    final sut = ClientDao(db!);

    // Act
    try {
      await sut.getByFilter(identifier.toFilter());
    } catch (e) {
      // Assert
      expect(e, isA<StateError>());
    }
  });

  test(
      "Should return true "
      "when save is called with [IdentifierFilter] and a valid id and a valid name",
      () async {
    // Arrange
    final model = ClientModel(id: identifier, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    // Act
    final actual = await sut.save(
      model.id.toFilter(),
      ClientModelsCompanion(
        name: drift.Value(joeName),
      ),
    );

    // Assert
    expect(actual, isTrue);
  });

  test(
      "Should throw CriticalError "
      "when save is called with [IdentifierFilter] and "
      "a valid id and an empty name", () async {
    // Arrange
    final model = ClientModel(id: identifier, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    try {
      // Act
      await sut.save(
        model.id.toFilter(),
        ClientModelsCompanion(
          name: drift.Value(Name("")),
        ),
      );
    } catch (e) {
      // Assert
      expect(e, isA<CriticalError>());
    }
  });

  test(
      "Should return false "
      "when save is called with [IdentifierFilter] and "
      "an invalid id and a valid name", () async {
    // Arrange
    final model = ClientModel(id: identifier, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    // Act
    final actual = await sut.save(
      Identifier.fromInt(2).toFilter(),
      ClientModelsCompanion(
        name: drift.Value(joeName),
      ),
    );

    // // Assert
    expect(actual, isFalse);
  });

  test(
      "Should return true "
      "when remove is called with [IdentifierFilter] and a valid id", () async {
    // Arrange
    final model = ClientModel(id: identifier, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(model);

    // Act
    final actual = await sut.remove(model.id.toFilter());

    // Assert
    expect(actual, isTrue);
  });

  tearDown(() async {
    await db?.close();
  });
}
