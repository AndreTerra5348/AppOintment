import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/common/filters.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("IdentifierFilter hash should be equal to Identifier hash", () {
    // Arrange
    const id = 1;
    final sut = IdentifierFilter(Identifier.fromInt(id));

    // Act
    final result = sut.hashCode;

    // Assert
    expect(result, id.hashCode);
  });
}
