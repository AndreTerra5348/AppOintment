import 'package:appointment/infrastructure/drift/client/client_filters.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'client_filters_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ClientModels>()])
void main() {
  test(
      "Should call [ClientModels.name.contains(name)] once "
      "when getExpression is called", () {
    // Arrange
    const name = "Bob";
    final table = MockClientModels();
    final sut = ClientNameFilter(name);

    // Act
    sut.getExpression(table);

    // Assert
    verify(table.name.contains(name)).called(1);
  });
}
