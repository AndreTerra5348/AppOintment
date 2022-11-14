import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final DriftDb db;
  setUp(() {
    db = DriftDb(executor: NativeDatabase.memory());
  });

  group("Client Dao", () {
    group("insert getById", () {
      test(
          'Should return clientModel with same name and id when insert is called',
          () async {
        // Arrange
        final model = ClientModelsCompanion.insert(name: "Bob");
        final sut = ClientDao(db);

        // Act
        final id = await sut.insert(model);
        final actual = await sut.getByUid(Uid.fromInt(id));

        // Assert
        expect(actual.id, id);
        expect(actual.name, model.name.value);
      });
    });
  });

  group("Count", () {
    test("Should return the number of rows when count is called", () async {
      // Arrange
      const count = 5;
      final sut = ClientDao(db);
      Iterable.generate(count)
          .map((e) => ClientModelsCompanion.insert(name: "Bob"))
          .forEach(sut.insert);

      // Act
      final actual = await sut.count();

      // Assert
      expect(actual, count);
    });
  });

  tearDown(() async {
    await db.close();
  });
}
