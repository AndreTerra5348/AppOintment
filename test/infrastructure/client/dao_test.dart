import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/error.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../common/client_fixture.dart' as client_fixture;

void main() {
  DriftDb? db;
  late Name bobName;
  late Name joeName;
  late Uid uid;
  setUp(() {
    db = DriftDb(executor: NativeDatabase.memory());
    bobName = Name("Bob");
    joeName = Name("Joe");
    uid = Uid.fromInt(1);
  });

  test(
      "Should return clientModel with same name and id "
      "when insert is called "
      "and getByUid is called with the same id", () async {
    // Arrange
    final model = ClientModelsCompanion.insert(name: bobName);
    final sut = ClientDao(db!);

    // Act
    final id = await sut.insert(model);
    final actual = await sut.getById(Uid.fromInt(id));

    // Assert
    expect(actual.id, uid);
    expect(actual.name, model.name.value);
  });

  test(
      "Should throw StateError "
      "when getById is called and id do NOT exists", () async {
    // Arrange
    final sut = ClientDao(db!);

    // Act
    try {
      await sut.getById(uid);
    } catch (e) {
      // Assert
      expect(e, isA<StateError>());
    }
  });

  test(
      "Should return the 5 first inserted clientModel "
      "when getPage is called with limit 5 and offset 0", () async {
    // Arrange
    const amount = 5;
    final clients = client_fixture.generateModel(amount: amount);

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: joeName));

    // Act
    final actual = await sut.getPage(limit: amount, offset: 0);

    // Assert
    expect(actual, hasLength(clients.length));
    expect(actual, containsAllInOrder(clients));
  });

  test(
      "Should return empty "
      "when getPage is called with offset greater than the amount of items",
      () async {
    // Arrange
    const amount = 5;
    final clients = client_fixture.generateModel(amount: amount);

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: joeName));

    // Act
    final actual = await sut.getPage(limit: amount, offset: 6);

    // Assert
    expect(actual, isEmpty);
  });

  test(
      "Should return the inserted clientModel which match the filter "
      "when getPage is called with offset 0 limit 5 and NameFilter", () async {
    // Arrange
    const count = 3;
    final clients = client_fixture.generateModel(amount: count);

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: joeName));
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
    final model = ClientModel(id: uid, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    // Act
    final actual = await sut.save(
      model.id,
      ClientModelsCompanion(
        name: Value(joeName),
      ),
    );

    // Assert
    expect(actual, isTrue);
  });

  test(
      "Should throw CriticalError "
      "when updateById is called with a valid id and an empty name", () async {
    // Arrange
    final model = ClientModel(id: uid, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    try {
      // Act
      await sut.save(
        model.id,
        ClientModelsCompanion(
          name: Value(Name("")),
        ),
      );
    } catch (e) {
      // Assert
      expect(e, isA<CriticalError>());
    }
  });

  test(
      "Should return false "
      "when updateById is called with an invalid id and a valid name",
      () async {
    // Arrange
    final model = ClientModel(id: uid, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(ClientModelsCompanion.insert(name: model.name));

    // Act
    final actual = await sut.save(
      Uid.fromInt(2),
      ClientModelsCompanion(
        name: Value(joeName),
      ),
    );

    // // Assert
    expect(actual, isFalse);
  });

  test(
      "Should return true "
      "when remove is called with a valid id", () async {
    // Arrange
    final model = ClientModel(id: uid, name: bobName);
    final sut = ClientDao(db!);
    await sut.insert(model);

    // Act
    final actual = await sut.remove(model.id);

    // Assert
    expect(actual, isTrue);
  });

  tearDown(() async {
    await db?.close();
  });
}
