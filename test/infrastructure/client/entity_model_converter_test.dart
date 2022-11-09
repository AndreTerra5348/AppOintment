import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientConverter", () {
    group("toEntity", toEntityTests);
    group("toUpdateCompanion", toUpdateCompanionTests);
    group("toEntityWithId", toEntityWithIdTests);
  });
}

void toEntityTests() {
  test(
      "Should return client with right name and id when called with client model",
      () {
    // Arrange
    const model = ClientModel(id: 0, name: "Bob");
    final sut = ClientConveter();

    // Act
    final actual = sut.toEntity(model);

    // Assert
    expect(actual.name.getOrCrash(), model.name);
    expect(actual.id.getOrCrash(), model.id);
  });
}

void toUpdateCompanionTests() {
  test(
      "Should return ClientUpdateCompanion with right name when called with client",
      () {
    // Arrange
    final entity = Client.withoutUid(name: Name("Bobo"));
    final sut = ClientConveter();

    // Act
    final actual = sut.toUpdateCompanion(entity);

    // Assert
    expect(actual, isA<ClientModelsCompanion>());
    expect(actual.name.value, entity.name.getOrCrash());
  });
}

void toEntityWithIdTests() {
  test(
      "Should return client with same id and name when called with client and id",
      () {
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
}
