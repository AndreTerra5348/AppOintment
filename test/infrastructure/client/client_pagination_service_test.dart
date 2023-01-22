import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/client/client_filters.dart';
import 'package:appointment/infrastructure/drift/client/client_pagination_service.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'client_pagination_service_test.mocks.dart';

import '../../common/client_fixture.dart' as client_fixture;

@GenerateNiceMocks([
  MockSpec<Dao>(unsupportedMembers: {#alias}),
  MockSpec<SimpleSelectStatement>(),
])
void main() {
  test(
      "Should call [Dao.getSelect()] one time "
      "[SimpleSelectStatement.setLimit()] one time"
      "[SimpleSelectStatement.get()] one time "
      "should return a list of client entitites "
      "when getPage is called and there's no errors", () async {
    // Arrange
    const amount = 5;
    final models = client_fixture.generateModel(amount: amount);

    final mockDao = MockDao<ClientModels, ClientModel>();
    final mockSelection =
        MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockSelection.get()).thenAnswer(
      (_) => Future.value(models.toList()),
    );
    when(mockDao.getSelect(filter: anyNamed("filter")))
        .thenReturn(mockSelection);

    final ClientPaginationService sut = ClientPaginationService(mockDao);

    // Act
    final actual = await sut.getPage(limit: 0, offset: 5);

    //Assert
    expect(
      actual.getOrElse(() => const Iterable.empty()),
      containsAllInOrder(
        models.map(
          (model) => model.toEntity(),
        ),
      ),
    );
    verify(mockDao.getSelect(filter: anyNamed("filter"))).called(1);
    verify(mockSelection.limit(any, offset: anyNamed("offset"))).called(1);
    verify(mockSelection.get()).called(1);
  });

  test(
      "should return [PageServiceFailure.getPageDbException(error: error)]"
      "when getPage is called and Dao throws exception", () async {
    // Arrange
    final error = Exception("Mocked Exception");
    final mockDao = MockDao<ClientModels, ClientModel>();
    final mockSelection =
        MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockDao.getSelect(filter: anyNamed("filter")))
        .thenReturn(mockSelection);
    when(mockSelection.get()).thenThrow(error);
    final ClientPaginationService sut = ClientPaginationService(mockDao);

    // Act
    final actual = await sut.getPage(limit: 0, offset: 5);

    //Assert
    expect(actual, Left(PaginationServiceFailure.dbException(error: error)));
  });

  test(
      "Should return the 5 first inserted clientModel "
      "when getPage is called with limit 5 and offset 0", () async {
    // Arrange
    const amount = 10;
    final models = client_fixture.generateModel(amount: amount);

    final mockDao = MockDao<ClientModels, ClientModel>();
    final mockSelection =
        MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockSelection.get()).thenAnswer(
      (_) => Future.value(models.toList()),
    );
    when(mockDao.getSelect(filter: anyNamed("filter")))
        .thenReturn(mockSelection);

    final ClientPaginationService sut = ClientPaginationService(mockDao);

    // Act
    final actual = await sut.getPage(limit: 5, offset: 0);

    //Assert
    expect(
      actual.getOrElse(() => const Iterable.empty()),
      containsAllInOrder(
        models.take(5).map((model) => model.toEntity()),
      ),
    );
  });

  test(
      "Should return empty "
      "when [Dao] returns empty list ", () async {
    // Arrange
    final mockDao = MockDao<ClientModels, ClientModel>();
    final mockSelection =
        MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockSelection.get()).thenAnswer(
      (_) => Future.value([]),
    );
    when(mockDao.getSelect(filter: anyNamed("filter")))
        .thenReturn(mockSelection);

    final ClientPaginationService sut = ClientPaginationService(mockDao);

    // Act
    final actual = await sut.getPage(limit: 5, offset: 10);

    //Assert
    expect(actual.getOrElse(() => throw Error), isEmpty);
  });

  test(
      "Should return the inserted clientModel which match the filter "
      "when getPage is called with offset 0 limit 5 and NameFilter", () async {
    // Arrange
    const otherName = "Other";
    const amount = 10;
    final models = client_fixture.generateModel(amount: amount).toList();
    models.add(ClientModel(
      id: Identifier.fromInt(11),
      name: Name(otherName),
    ));

    final mockDao = MockDao<ClientModels, ClientModel>();
    final mockSelection =
        MockSimpleSelectStatement<ClientModels, ClientModel>();
    when(mockSelection.get()).thenAnswer(
      (_) => Future.value(models.toList()),
    );
    when(mockDao.getSelect(filter: anyNamed("filter")))
        .thenReturn(mockSelection);

    final ClientPaginationService sut = ClientPaginationService(mockDao);

    // Act
    final actual = await sut.getPage(
      limit: 5,
      offset: 0,
      filter: ClientNameFilter(otherName),
    );

    //Assert
    expect(
      actual.getOrElse(() => const Iterable.empty()),
      containsAllInOrder(
        models.where((model) => model.name.getOrThrow() == otherName).map(
              (model) => model.toEntity(),
            ),
      ),
    );
  });
}
