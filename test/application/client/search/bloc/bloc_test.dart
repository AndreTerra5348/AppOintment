import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/client/search/status.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/page_service.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ClientPageService>(),
])
void main() {
  group("ClientSearchBloc - ", () {
    group("Initial -", () {
      test("Initial state should be [ClientSearchBloc.initial()]", () {
        // Arrange
        final sut = _createSut();
        // Act

        //Assert
        expect(sut.state, ClientSearchState.initial());
      });

      test("[ClientSearchBloc.initial().term] should be empty", () {
        // Arrange
        final sut = _createSut();
        // Act

        //Assert
        expect(sut.state.term, isEmpty);
      });

      test(
          "[ClientSearchBloc.initial().status] should be [ClientSearchStatus.loading()]",
          () {
        // Arrange
        final sut = _createSut();
        // Act

        //Assert
        expect(sut.state.status, const ClientSearchStatus.loading());
      });

      test(
          "[ClientSearchBloc.initial().searchFilter] should be [SearchFilter.name()]",
          () {
        // Arrange
        final sut = _createSut();
        // Act

        //Assert
        expect(sut.state.filter, const SearchFilter.name());
      });

      test(
          "[ClientSearchBloc.initial().getFilter()] should return ClientNameFilter",
          () {
        // Arrange
        final sut = _createSut();
        // Act

        //Assert
        expect(sut.state.getFilter(), isA<ClientNameFilter>());
      });

      test("[ClientSearchBloc.initial().hasReachedMax] should return false",
          () {
        // Arrange
        final sut = _createSut();
        // Act

        //Assert
        expect(sut.state.hasReachedMax, isFalse);
      });
    });
    group("Events -", () {
      const term = "Bob";
      late MockClientPageService pageService;
      late Iterable<Client> clients;
      late PageServiceFailure failure;

      blocTest<ClientSearchBloc, ClientSearchState>(
        "Given [ClientSearchState.initial()] "
        "When [ClientSearchEvent.fetchRequested()] "
        "Then [ClientSearchState.status] should be [ClientSearchStatus.loading()] "
        "And [ClientSearchState.clients] should empty "
        "And [ClientSearchState.hasReachedMax] should be false "
        "And [ClientSearchState.term] should be empty "
        "Then [pageService.getPage()] should be called once "
        "Then [ClientSearchState.status] should be [ClientSearchStatus.success()] "
        "And [ClientSearchState.clients] should be [clients] from [pageService.getPage()] "
        "And [ClientSearchState.hasReachedMax] should be true "
        "And [ClientSearchState.term] should be empty ",
        setUp: () {
          clients = _createClients();
          pageService = _whenMockClientPageServiceWithClients(clients);
        },
        build: () => _createSut(pageService: pageService),
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
        "Given [ClientSearchState.initial()] "
        "When [ClientSearchEvent.termChanged(value)] "
        "Then [ClientSearchState.status] should be [ClientSearchStatus.loading()]"
        "And [ClientSearchState.term] should be [value] "
        "And [ClientSearchState.clients] should be empty "
        "And [ClientSearchState.hasReachedMax] should be false "
        "Then [pageService.getPage()] should be called once and return [clients] "
        "Then [ClientSearchState.status] should be [ClientSearchStatus.success()] "
        "And [ClientSearchState.clients] should be [clients] returned from [pageService.getPage()] "
        "And [ClientSearchState.hasReachedMax] should be true "
        "And [ClientSearchState.term] should be [value] ",
        setUp: () {
          clients = _createClients();
          pageService = _whenMockClientPageServiceWithClients(clients);
        },
        build: () => _createSut(pageService: pageService),
        act: (bloc) =>
            bloc.add(const ClientSearchEvent.termChanged(term: term)),
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
        "Given [ClientSearchState.initial()] "
        "When [ClientSearchEvent.termChanged(value)] "
        "Skip 1 [ClientSearchState.status] [ClientSearchStatus.loading()]"
        "Then [pageService.getPage()] should be called once and return [empty] "
        "Then [ClientSearchState.status] should be [ClientSearchStatus.empty()] "
        "And [ClientSearchState.clients] should be [empty] "
        "And [ClientSearchState.hasReachedMax] should be true "
        "And [ClientSearchState.term] should be [value] ",
        setUp: () {
          pageService =
              _whenMockClientPageServiceWithClients(const Iterable.empty());
        },
        build: () => _createSut(pageService: pageService),
        act: (bloc) =>
            bloc.add(const ClientSearchEvent.termChanged(term: term)),
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

      blocTest<ClientSearchBloc, ClientSearchState>(
        "Given [ClientSearchState.initial()] "
        "When [ClientSearchEvent.fetchRequested()] "
        "Skip 1 [ClientSearchState.status] [ClientSearchStatus.loading()]"
        "And [pageService.getPage()] returns [PageServiceFailure] "
        "Then [ClientSearchState.status] should be [ClientSearchStatus.failure()] ",
        setUp: () {
          failure = PageServiceFailure.dbException(error: Exception("error"));
          pageService = _whenMockClientPageServiceWithFailure(failure);
        },
        build: () => _createSut(pageService: pageService),
        act: (bloc) => bloc.add(const ClientSearchEvent.fetchRequested()),
        skip: 1,
        expect: () => [
          ClientSearchState.initial().copyWith(
            status: ClientSearchStatus.failure(failure: failure),
          )
        ],
      );
    });
  });
}

ClientSearchBloc _createSut({ClientPageService? pageService}) {
  return ClientSearchBloc(pageService ?? MockClientPageService());
}

MockClientPageService _whenMockClientPageServiceWithClients(
    Iterable<Client> clients) {
  final mock = MockClientPageService();
  when(mock.getPage(
    limit: anyNamed("limit"),
    offset: anyNamed("offset"),
    filter: anyNamed("filter"),
  )).thenAnswer((_) async => Right(clients));
  return mock;
}

MockClientPageService _whenMockClientPageServiceWithFailure(
    PageServiceFailure failure) {
  final mock = MockClientPageService();
  when(mock.getPage(
    limit: anyNamed("limit"),
    offset: anyNamed("offset"),
    filter: anyNamed("filter"),
  )).thenAnswer((_) async => Left(failure));
  return mock;
}

void _verifyPageMock({required MockClientPageService pageService}) {
  verify(pageService.getPage(
    limit: anyNamed("limit"),
    offset: anyNamed("offset"),
    filter: anyNamed("filter"),
  )).called(1);
}

Iterable<Client> _createClients() {
  return Iterable.generate(5).map(
    (e) => Client(
      id: Uid.fromInt(e),
      name: Name("Bob"),
    ),
  );
}
