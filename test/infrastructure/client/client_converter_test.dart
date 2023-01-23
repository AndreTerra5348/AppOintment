import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/client/client_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientConverter", () {
    test(
        "Should return entity with id and properties equal to the model "
        "When [toEntity] is called with model", () {
      // Arrange
      final model = ClientModel(id: Identifier.fromInt(0), name: Name("Bob"));
      final sut = ClientConverter();

      // Act
      final actual = sut.toEntity(model);

      // Assert
      expect(actual.name, model.name);
      expect(actual.id, model.id);
    });
    test(
        "Should return [UpdateCompanion] with the same properties as the entity "
        "When toCompanion called with entity ", () {
      // Arrange
      final entity = Client.withoutIdentifier(name: Name("Bobo"));
      final sut = ClientConverter();

      // Act
      final actual = sut.toCompanion(entity);

      // Assert
      expect(actual, isA<ClientModelsCompanion>());
      expect(actual.name.value, entity.name);
    });
    test(
        "Should return entity with same properties and id "
        "When [copyWithId] called with entity and [Identifier]", () {
      // Arrange
      final id = Identifier.fromInt(0);
      final entity = Client(name: Name("Bobo"), id: id);
      final sut = ClientConverter();

      // Act
      final actual = sut.copyWithId(entity, id);

      // Assert
      expect(actual.name, entity.name);
      expect(actual.id, entity.id);
    });
  });
}
