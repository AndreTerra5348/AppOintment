import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientConverter", () {
    test(
        "Should return [Client] with name and id equal to the model "
        "When [toEntity] is called with [ClientModel]", () {
      // Arrange
      const model = ClientModel(id: 0, name: "Bob");
      final sut = ClientConveter();

      // Act
      final actual = sut.toEntity(model);

      // Assert
      expect(actual.name.getOrThrow(), model.name);
      expect(actual.id.getOrThrow(), model.id);
    });
    test(
        "Should return [ClientModelsCompanion] with the same name as the entity "
        "When toUpdateCompanion called with [Client] ", () {
      // Arrange
      final entity = Client.withoutUid(name: Name("Bobo"));
      final sut = ClientConveter();

      // Act
      final actual = sut.toUpdateCompanion(entity);

      // Assert
      expect(actual, isA<ClientModelsCompanion>());
      expect(actual.name.value, entity.name.getOrThrow());
    });
    test(
        "Should return [Client] with same name and id "
        "When [toEntityWithId] called with [Client] and [Uid]", () {
      // Arrange
      final id = Uid.fromInt(0);
      final entity = Client(name: Name("Bobo"), id: id);
      final sut = ClientConveter();

      // Act
      final actual = sut.toEntityWithId(entity, id);

      // Assert
      expect(actual.name, entity.name);
      expect(actual.id, entity.id);
    });

    test(
        "Should return [ClientModel] with same name and id "
        "When [toModel] called with [Client]", () {
      // Arrange
      final entity = Client(name: Name("Bobo"), id: Uid.fromInt(0));
      final sut = ClientConveter();

      // Act
      final actual = sut.toModel(entity);

      // Assert
      expect(actual.name, entity.name.getOrThrow());
      expect(actual.id, entity.id.getOrThrow());
    });
  });
}
