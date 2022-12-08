import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'bloc_test.mocks.dart';

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
      clients = Iterable.generate(5).map(
        (e) => Client(
          id: Uid.fromInt(e),
          name: Name("Bob"),
        ),
      );

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
