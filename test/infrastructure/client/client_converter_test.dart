import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/client/client_converter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientConverter", () {
    test(
        "Should return [Client] with name and id equal to the model "
        "When [toEntity] is called with [ClientModel]", () {
      // Arrange
      final model = ClientModel(id: Uid.fromInt(0), name: Name("Bob"));
      final sut = ClientConveter();

      // Act
      final actual = sut.toEntity(model);

      // Assert
      expect(actual.name, model.name);
      expect(actual.id, model.id);
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
      expect(actual.name.value, entity.name);
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
      expect(actual.name, entity.name);
      expect(actual.id, entity.id);
    });
  });
}
