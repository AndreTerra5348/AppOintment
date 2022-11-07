import 'package:appointment/domain/client/client.dart';
import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/drift/dao.dart';
import 'package:appointment/infrastructure/drift/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'client_repository_test.mocks.dart';

@GenerateMocks([Dao])
void main() {
  group("Client Repository", () {
    group("Insert", insertTests);
  });
}

void insertTests() {
  test("Should call Dao<ClientModel> insert only once", () async {
    // Arrange
    var clientDao = MockDao<ClientModel>();
    var client = Client.withoutUid(name: Name("Bob"));

    IRepository<Client> clientRepository = ClientRepository(clientDao);

    // Act
    await clientRepository.insert(client);

    // Assert
    verify(clientDao.insert(any)).called(1);
  });

  test("Should call Dao<ClientModel> insert with clientModel", () async {
    // Arrange
    var clientDao = MockDao<ClientModel>();
    var client = Client.withoutUid(name: Name("Bob"));

    IRepository<Client> clientRepository = ClientRepository(clientDao);

    // Act
    await clientRepository.insert(client);

    // Assert
    expect(verify(clientDao.insert(captureAny)).captured.single,
        isA<ClientModel>());
  });

  test("Should return client with correct id when insert is called", () async {
    // Arrange
    var client = Client.withoutUid(name: Name("Bob"));

    var clientDao = MockDao<ClientModel>();
    var id = 1;
    when(clientDao.insert(any))
        .thenAnswer((realInvocation) => Future.sync(() => id));

    IRepository<Client> clientRepository = ClientRepository(clientDao);

    // Act
    var actual = await clientRepository.insert(client);

    // Assert
    expect(actual, isA<Right<RepositoryFailure, Client>>());
    expect(
        (actual as Right<RepositoryFailure, Client>).value.id, Uid.fromInt(id));
  });

  test("Should return RepositoryFailure when Dao<ClientModel> throws exception",
      () async {
    // Arrange
    var client = Client.withoutUid(name: Name("Bob"));
    var clientDao = MockDao<ClientModel>();
    when(clientDao.insert(any)).thenThrow(Exception("Mocked Exception"));
    IRepository<Client> clientRepository = ClientRepository(clientDao);

    // Act
    var actual = await clientRepository.insert(client);

    // Assert
    expect(actual, isA<Left<RepositoryFailure, Client>>());
    expect((actual as Left<RepositoryFailure, Client>).value.error,
        isA<Exception>());
  });
}
