import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Entity', () {
    // Test if Client uses EntityMixin
    test('uses EntityMixin', () {
      expect(Client.withoutUid(name: Name('John Doe')), isA<EntityMixin>());
    });

    test(
        "Given a client with a valid name and id, "
        "When isValid is called, "
        "Then it returns true", () {
      // Arrange
      var sut = Client(name: Name('Bob'), id: Uid.fromInt(1));
      // Act

      // Assert
      expect(sut.isValid, true);
    });

    test(
        "Given a client with an invalid name and a valid id, "
        "When isValid is called, "
        "Then it returns false", () {
      // Arrange
      var sut = Client(name: Name(''), id: Uid.fromInt(1));
      // Act

      // Assert
      expect(sut.isValid, false);
    });

    test(
        "Given a client with a valid name and an invalid id, "
        "When isValid is called, "
        "Then it returns false", () {
      // Arrange
      var sut = Client(name: Name('Bob'), id: Uid());
      // Act

      // Assert
      expect(sut.isValid, false);
    });

    test(
        "Given a client with an invalid name and an invalid id, "
        "When isValid is called, "
        "Then it returns false", () {
      // Arrange
      var sut = Client(name: Name(''), id: Uid());
      // Act

      // Assert
      expect(sut.isValid, false);
    });
  });
}
