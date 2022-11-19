import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/client/page_service.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'page_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dao>(unsupportedMembers: {#table}),
])
void main() {
  group("Client Page Service - ", () {
    test(
        "Should call [Dao.getPage()] one time and return a list of client entitites when getPage is called",
        () async {
      // Arrange
      const count = 5;
      final models = Iterable.generate(count)
          .map((e) => ClientModel(id: e + 1, name: "Bob"));

      final mockDao = MockDao<ClientModels, ClientModel>();
      when(mockDao.getPage(
              limit: anyNamed("limit"), offset: anyNamed("offset")))
          .thenAnswer(
        (_) => Future.value(models),
      );
      final converter = ClientConveter();
      final IPageService sut = ClientPageService(mockDao, ClientConveter());

      // Act
      final actual = await sut.getPage(limit: 0, offset: 5);

      //Assert
      expect(actual.getOrElse(() => const Iterable<Client>.empty()),
          containsAllInOrder(models.map(converter.toEntity)));
      verify(mockDao.getPage(
              limit: anyNamed("limit"), offset: anyNamed("offset")))
          .called(1);
    });

    test("""Should call [Dao.getPage()] one time and return the 
      PageServiceFailure.getPageDbException(error: error)
      when getPage is called and Dao throws exception""", () async {
      // Arrange
      final error = Exception("Mocked Exception");
      final mockDao = MockDao<ClientModels, ClientModel>();
      when(mockDao.getPage(
              limit: anyNamed("limit"), offset: anyNamed("offset")))
          .thenThrow(error);
      final IPageService sut = ClientPageService(mockDao, ClientConveter());

      // Act
      final actual = await sut.getPage(limit: 0, offset: 5);

      //Assert
      expect(actual, Left(PageServiceFailure.getPageDbException(error: error)));
      verify(mockDao.getPage(
              limit: anyNamed("limit"), offset: anyNamed("offset")))
          .called(1);
    });
  });
}
