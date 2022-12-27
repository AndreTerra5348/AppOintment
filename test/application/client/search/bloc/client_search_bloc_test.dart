import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/application/client/search/client_search_status.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/infrastructure/drift/client/client_filters.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/page_service.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'client_search_bloc_test.mocks.dart';

import '../../../../common/client_fixture.dart' as client_fixture;

@GenerateNiceMocks([
  MockSpec<DriftPageService>(),
])
void main() {
  late MockDriftPageService<Client, ClientModels, ClientModel> pageService;
  setUp(() {
    pageService = MockDriftPageService<Client, ClientModels, ClientModel>();
  });

  test(
    "Initial [State] should be [initial()]",
    () {
      // Arrange
      final sut = ClientSearchBloc(pageService);

      // Act
      // Assert
      expect(sut.state, ClientSearchState.initial());
    },
  );

  test(
    "[State.term] should be empty",
    () {
      // Arrange
      final sut = ClientSearchBloc(pageService);

      // Act
      // Assert
      expect(sut.state.term, isEmpty);
    },
  );

  test(
    "[State.status] should be [loading()]",
    () {
      // Arrange
      final sut = ClientSearchBloc(pageService);

      // Act
      // Assert
      expect(sut.state.status, const ClientSearchStatus.loading());
    },
  );

  test(
    "[State.searchFilter] should be [name()]",
    () {
      // Arrange
      final sut = ClientSearchBloc(pageService);

      // Act
      // Assert
      expect(sut.state.filter, const SearchFilter.name());
    },
  );

  test(
    "[State.getFilter()] should return ClientNameFilter",
    () {
      // Arrange
      final sut = ClientSearchBloc(pageService);

      // Act
      // Assert
      expect(sut.state.getFilter(), isA<ClientNameFilter>());
    },
  );

  test(
    "[State.hasReachedMax] should return false",
    () {
      // Arrange
      final sut = ClientSearchBloc(pageService);
      // Act

      //Assert
      expect(sut.state.hasReachedMax, isFalse);
    },
  );
  const term = "Bob";
  late Iterable<Client> clients;
  late PageServiceFailure failure;

  group("Given [PageService.getPage()] return clients  ", () {
    setUp(() {
      clients = client_fixture.generateEntity(amount: 5);

      pageService = _whenMockClientPageServiceWithClients(clients);
    });
    blocTest<ClientSearchBloc, ClientSearchState>(
      "When [Event.fetchRequested()] "
      "Then [State.status] should be [loading()] "
      "And [State.clients] should empty "
      "And [State.hasReachedMax] should be false "
      "And [State.term] should be empty "
      "Then [pageService.getPage()] should be called once "
      "Then [State.status] should be [success()] "
      "And [State.clients] should be [clients] from [getPage()] "
      "And [State.hasReachedMax] should be true "
      "And [State.term] should be empty ",
      build: () => ClientSearchBloc(pageService),
      act: (bloc) => bloc.add(const ClientSearchEvent.fetchRequested()),
      expect: () => [
        ClientSearchState.initial().copyWith(
          status: const ClientSearchStatus.loading(),
          clients: const Iterable.empty(),
          hasReachedMax: false,
          term: "",
        ),
        ClientSearchState.initial().copyWith(
          status: const ClientSearchStatus.success(),
          clients: clients,
          hasReachedMax: true,
          term: "",
        ),
      ],
      verify: (_) => _verifyPageMock(pageService: pageService),
    );

    blocTest<ClientSearchBloc, ClientSearchState>(
      "When [Event.termChanged(value)] "
      "Then [State.status] should be [loading()]"
      "And [State.term] should be [value] "
      "And [State.clients] should be empty "
      "And [State.hasReachedMax] should be false "
      "Then [pageService.getPage()] should be called once and return [clients] "
      "Then [State.status] should be [success()] "
      "And [State.clients] should be [clients] returned from [getPage()] "
      "And [State.hasReachedMax] should be true "
      "And [State.term] should be [value] ",
      build: () => ClientSearchBloc(pageService),
      act: (bloc) => bloc.add(const ClientSearchEvent.termChanged(term: term)),
      expect: () => [
        ClientSearchState.initial().copyWith(
          term: term,
          status: const ClientSearchStatus.loading(),
          clients: const Iterable.empty(),
          hasReachedMax: false,
        ),
        ClientSearchState.initial().copyWith(
          term: term,
          status: const ClientSearchStatus.success(),
          clients: clients,
          hasReachedMax: true,
        ),
      ],
      verify: (_) => _verifyPageMock(pageService: pageService),
    );

    blocTest<ClientSearchBloc, ClientSearchState>(
      "When [Event.refreshRequested()] "
      "Then [State] should be [initial()] "
      "Then [pageService.getPage()] should be called once "
      "Then [State.status] should be [success()] "
      "And [State.clients] should be [clients] from [getPage()] "
      "And [State.hasReachedMax] should be true "
      "And [State.term] should be empty ",
      build: () => ClientSearchBloc(pageService),
      act: (bloc) => bloc.add(const ClientSearchEvent.refreshRequested()),
      expect: () => [
        ClientSearchState.initial(),
        ClientSearchState.initial().copyWith(
          status: const ClientSearchStatus.success(),
          clients: clients,
          hasReachedMax: true,
          term: "",
        ),
      ],
      verify: (_) => _verifyPageMock(pageService: pageService),
    );
  });

  blocTest<ClientSearchBloc, ClientSearchState>(
    "When [Event.fetchRequested()] "
    "Skip 1 [State.status] [loading()]"
    "And [pageService.getPage()] returns [PageServiceFailure] "
    "Then [State.status] should be [failure()] ",
    setUp: () {
      failure = PageServiceFailure.dbException(error: Exception("error"));
      pageService = _whenMockClientPageServiceWithFailure(failure);
    },
    build: () => ClientSearchBloc(pageService),
    act: (bloc) => bloc.add(const ClientSearchEvent.fetchRequested()),
    skip: 1,
    expect: () => [
      ClientSearchState.initial().copyWith(
        status: ClientSearchStatus.failure(failure: failure),
      )
    ],
  );

  blocTest<ClientSearchBloc, ClientSearchState>(
    "When [Event.termChanged(value)] "
    "Skip 1 [State.status] [loading()]"
    "Then [pageService.getPage()] should be called once and return [empty] "
    "Then [State.status] should be [empty()] "
    "And [State.clients] should be [empty] "
    "And [State.hasReachedMax] should be true "
    "And [State.term] should be [value] ",
    setUp: () {
      pageService =
          _whenMockClientPageServiceWithClients(const Iterable.empty());
    },
    build: () => ClientSearchBloc(pageService),
    act: (bloc) => bloc.add(const ClientSearchEvent.termChanged(term: term)),
    skip: 1,
    expect: () => [
      ClientSearchState.initial().copyWith(
        term: term,
        status: const ClientSearchStatus.empty(),
        clients: const Iterable.empty(),
        hasReachedMax: true,
      ),
    ],
    verify: (_) => _verifyPageMock(pageService: pageService),
  );
}

MockDriftPageService<Client, ClientModels, ClientModel>
    _whenMockClientPageServiceWithClients(Iterable<Client> clients) {
  final mock = MockDriftPageService<Client, ClientModels, ClientModel>();
  when(mock.getPage(
    limit: anyNamed("limit"),
    offset: anyNamed("offset"),
    filter: anyNamed("filter"),
  )).thenAnswer((_) async => Right(clients));
  return mock;
}

MockDriftPageService<Client, ClientModels, ClientModel>
    _whenMockClientPageServiceWithFailure(PageServiceFailure failure) {
  final mock = MockDriftPageService<Client, ClientModels, ClientModel>();
  when(mock.getPage(
    limit: anyNamed("limit"),
    offset: anyNamed("offset"),
    filter: anyNamed("filter"),
  )).thenAnswer((_) async => Left(failure));
  return mock;
}

void _verifyPageMock(
    {required MockDriftPageService<Client, ClientModels, ClientModel>
        pageService}) {
  verify(pageService.getPage(
    limit: anyNamed("limit"),
    offset: anyNamed("offset"),
    filter: anyNamed("filter"),
  )).called(1);
}
