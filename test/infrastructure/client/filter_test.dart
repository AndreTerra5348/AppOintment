import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'filter_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SimpleSelectStatement>()])
void main() {
  test("Should call SimpleSelectStatement once when filter is called", () {
    // Arrange
    const name = "Bob";
    final mockSelect = MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockSelect.where(any));
    final sut = ClientNameFilter(name);

    // Act
    sut(mockSelect);

    // Assert
    verify(mockSelect.where(any)).called(1);
  });
}
