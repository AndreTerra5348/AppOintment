import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repositories_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dao>(unsupportedMembers: {#table})
])
void main() {
  group("Client Repository", () {
    group("Insert", insertTests);
  });
}

void insertTests() {
  test("Should call Dao<ClientModel> insert only once", () async {
    // Arrange
    final clientDao = MockDao<ClientModels, ClientModel>();
    final client = Client.withoutUid(name: Name("Bob"));

    final sut = ClientRepository(clientDao, ClientConveter());

    // Act
    await sut.insert(client);

    // Assert
    verify(clientDao.insert(any)).called(1);
  });

  test("Should call Dao<ClientModel> insert with clientModelsCompanion",
      () async {
    // Arrange
    final clientDao = MockDao<ClientModels, ClientModel>();
    // TODO: change to Future.value and discard realInvocation value
    when(clientDao.insert(any))
        .thenAnswer((realInvocation) => Future.sync(() => 0));
    final client = Client.withoutUid(name: Name("Bob"));

    final sut = ClientRepository(clientDao, ClientConveter());

    // Act
    await sut.insert(client);

    // Assert
    expect(verify(clientDao.insert(captureAny)).captured.single,
        isA<UpdateCompanion<ClientModel>>());
  });

  test("Should return client with correct id when insert is called", () async {
    // Arrange
    final client = Client.withoutUid(name: Name("Bob"));

    final clientDao = MockDao<ClientModels, ClientModel>();
    const id = 1;
    when(clientDao.insert(any))
        .thenAnswer((realInvocation) => Future.sync(() => id));

    final sut = ClientRepository(clientDao, ClientConveter());

    // Act
    final actual = await sut.insert(client);

    // Assert
    expect(actual, isA<Right<RepositoryFailure, Client>>());
    expect(
        (actual as Right<RepositoryFailure, Client>).value.id, Uid.fromInt(id));
  });

  test("Should return RepositoryFailure when Dao<ClientModel> throws exception",
      () async {
    // Arrange
    final client = Client.withoutUid(name: Name("Bob"));
    final clientDao = MockDao<ClientModels, ClientModel>();
    when(clientDao.insert(any)).thenThrow(Exception("Mocked Exception"));

    final sut = ClientRepository(clientDao, ClientConveter());

    // Act
    final actual = await sut.insert(client);

    // Assert
    expect(actual, isA<Left<RepositoryFailure, Client>>());
    expect((actual as Left<RepositoryFailure, Client>).value.error,
        isA<Exception>());
  });
}
