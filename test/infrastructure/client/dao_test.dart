import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DriftDb? db;
  setUp(() {
    db = DriftDb(executor: NativeDatabase.memory());
  });

  test(
      "Should return clientModel with same name and id "
      "when insert is called "
      "and getByUid is called with the same id", () async {
    // Arrange
    final model = ClientModelsCompanion.insert(name: "Bob");
    final sut = ClientDao(db!);

    // Act
    final id = await sut.insert(model);
    final actual = await sut.getById(Uid.fromInt(id));

    // Assert
    expect(actual.id, id);
    expect(actual.name, model.name.value);
  });

  test(
      "Should throw StateError "
      "when getById is called and id do NOT exists", () async {
    // Arrange
    final sut = ClientDao(db!);

    // Act
    try {
      await sut.getById(Uid.fromInt(1));
    } catch (e) {
      // Assert
      expect(e, isA<StateError>());
    }
  });

  test(
      "Should return the 5 first inserted clientModel "
      "when getPage is called with limit 5 and offset 0", () async {
    // Arrange
    const count = 5;
    final clients = _createClients(count: count);

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: "Joe"));

    // Act
    final actual = await sut.getPage(limit: count, offset: 0);

    // Assert
    expect(actual, hasLength(clients.length));
    expect(actual, containsAllInOrder(clients));
  });

  test(
      "Should return empty "
      "when getPage is called with offset greater than the amount of items",
      () async {
    // Arrange
    const count = 5;
    final clients = _createClients(count: count);

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: "Joe"));

    // Act
    final actual = await sut.getPage(limit: count, offset: 6);

    // Assert
    expect(actual, isEmpty);
  });

  test(
      "Should return the inserted clientModel which match the filter "
      "when getPage is called with offset 0 limit 5 and NameFilter", () async {
    // Arrange
    const count = 3;
    final clients = _createClients(count: count);

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: "Joe"));
    final filter = ClientNameFilter("Bob");
    // Act
    final actual = await sut.getPage(limit: 5, offset: 0, filter: filter);

    // Assert
    expect(actual, hasLength(clients.length));
    expect(actual, containsAllInOrder(clients));
  });

  test(
      "Should return true "
      "when updateById is called with a valid id and a valid name", () async {
    // Arrange
    const model = ClientModel(id: 1, name: "Bob");
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    // Act
    final actual = await sut.save(
      Uid.fromInt(model.id),
      const ClientModelsCompanion(
        name: Value("Joe"),
      ),
    );

    // Assert
    expect(actual, isTrue);
  });

  test(
      "Should throw InvalidDataException "
      "when updateById is called with a valid id and an empty name", () async {
    // Arrange
    const model = ClientModel(id: 1, name: "Bob");
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    try {
      // Act
      await sut.save(
        Uid.fromInt(model.id),
        const ClientModelsCompanion(
          name: Value(""),
        ),
      );
    } catch (e) {
      // Assert
      expect(e, isA<InvalidDataException>());
    }
  });

  test(
      "Should return false "
      "when updateById is called with an invalid id and a valid name",
      () async {
    // Arrange
    const model = ClientModel(id: 1, name: "Bob");
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    // Act
    final actual = await sut.save(
      Uid.fromInt(2),
      const ClientModelsCompanion(
        name: Value("Joe"),
      ),
    );

    // // Assert
    expect(actual, isFalse);
  });

  test(
      "Should return true "
      "when remove is called with a valid id", () async {
    // Arrange
    const model = ClientModel(id: 1, name: "Bob");
    final sut = ClientDao(db!);
    await sut.insert(model);

    // Act
    final actual = await sut.remove(Uid.fromInt(model.id));

    // Assert
    expect(actual, isTrue);
  });

  tearDown(() async {
    await db?.close();
  });
}

Iterable<ClientModel> _createClients({int count = 1}) {
  return Iterable.generate(count).map(
    (e) => ClientModel(
      id: e + 1,
      name: "Bob",
    ),
  );
}
