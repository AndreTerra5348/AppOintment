import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  DriftDb? db;
  setUp(() {
    db = DriftDb(executor: NativeDatabase.memory());
  });

  test('Should return clientModel with same name and id when insert is called',
      () async {
    // Arrange
    final model = ClientModelsCompanion.insert(name: "Bob");
    final sut = ClientDao(db!);

    // Act
    final id = await sut.insert(model);
    final actual = await sut.getByUid(Uid.fromInt(id));

    // Assert
    expect(actual.id, id);
    expect(actual.name, model.name.value);
  });

  test("Should return the number of rows when count is called", () async {
    // Arrange
    const count = 5;
    final sut = ClientDao(db!);
    Iterable.generate(count)
        .map((e) => ClientModelsCompanion.insert(name: "Bob"))
        .forEach(sut.insert);

    // Act
    final actual = await sut.count();

    // Assert
    expect(actual, count);
  });

  test("Should return the number of rows when count with filter is called",
      () async {
    // Arrange
    const count = 5;
    final sut = ClientDao(db!);
    Iterable.generate(count)
        .map((e) => ClientModelsCompanion.insert(name: "Bob"))
        .forEach(sut.insert);

    final filter = ClientNameFilter("Bob");
    sut.insert(ClientModelsCompanion.insert(name: "Joe"));

    // Act
    final actual = await sut.count(filter: filter.getExpression(sut.table));

    // Assert
    expect(actual, count);
  });

  test(
      "Should return the 5 first clientModel when getPage is called with page 0 and size 5",
      () async {
    // Arrange
    const count = 5;
    final clients = Iterable.generate(count).map(
      (e) => ClientModel(
        id: e + 1,
        name: "Bob",
      ),
    );

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: "Joe"));

    // Act
    final actual = await sut.getPage(page: 0, size: 5);

    // Assert
    expect(actual, hasLength(clients.length));
    expect(actual, containsAllInOrder(clients));
  });

  test(
      "Should return the clientModel which match the filter when getPage is called with page 0 size 5 and NameFilter",
      () async {
    // Arrange
    const count = 3;
    final clients = Iterable.generate(count).map(
      (e) => ClientModel(
        id: e + 1,
        name: "Bob",
      ),
    );

    final sut = ClientDao(db!);
    clients
        .map((e) => ClientModelsCompanion.insert(name: e.name))
        .forEach(sut.insert);

    sut.insert(ClientModelsCompanion.insert(name: "Joe"));
    final filter = ClientNameFilter("Bob");
    // Act
    final actual = await sut.getPage(page: 0, size: 5, filter: filter);

    // Assert
    expect(actual, hasLength(clients.length));
    expect(actual, containsAllInOrder(clients));
  });

  tearDown(() async {
    await db?.close();
  });
}
