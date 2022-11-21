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

      blocTest(
        """Emit [ClientSearchState] with:
    [status] equal to [ClientSearchStatus.loading()]
    call [PageService.getPage()] once
    then emit [ClientSearchState] with:
    [status] equal to [ClientSearchStatus.success()]
    and [clients] equal to [PageService.getPage()] clients
    when [ClientSearchEvent.init()] event is added""",
        setUp: () {
          pageService = MockClientPageService();
          clients = _createClients();
          when(pageService.getPage(
            limit: anyNamed("limit"),
            offset: anyNamed("offset"),
            filter: anyNamed("filter"),
          )).thenAnswer((_) async => Right(clients));
        },
        build: () => _createSut(pageService: pageService),
        act: (bloc) => bloc.add(const ClientSearchEvent.init()),
        expect: () => [
          ClientSearchState.initial().copyWith(
            status: const ClientSearchStatus.loading(),
          ),
          ClientSearchState.initial().copyWith(
            status: const ClientSearchStatus.success(),
            clients: clients,
          )
        ],
        verify: (bloc) => verify(pageService.getPage(
          limit: anyNamed("limit"),
          offset: anyNamed("offset"),
          filter: anyNamed("filter"),
        )).called(1),
      );

      blocTest(
        """Emit [ClientSearchState] with:
    [status] equal to [ClientSearchStatus.loading()]
    call [PageService.getPage()] once
    then emit [ClientSearchState] with:
    [status] equal to [ClientSearchStatus.success()]
    and [clients] equal to [PageService.getPage()] clients
    when [ClientSearchEvent.fetchRequested()] is added""",
        setUp: () {
          pageService = MockClientPageService();
          clients = _createClients();
          when(pageService.getPage(
            limit: anyNamed("limit"),
            offset: anyNamed("offset"),
            filter: anyNamed("filter"),
          )).thenAnswer((_) async => Right(clients));
        },
        build: () => _createSut(pageService: pageService),
        act: (bloc) => bloc.add(const ClientSearchEvent.fetchRequested()),
        expect: () => [
          ClientSearchState.initial().copyWith(
            status: const ClientSearchStatus.loading(),
          ),
          ClientSearchState.initial().copyWith(
            status: const ClientSearchStatus.success(),
            clients: clients,
          )
        ],
        verify: (bloc) => verify(pageService.getPage(
          limit: anyNamed("limit"),
          offset: anyNamed("offset"),
          filter: anyNamed("filter"),
        )).called(1),
      );

      blocTest(
        """Emit [ClientSearchState] with:
      [status] equal to [ClientSearchStatus.failure()]
      with failure equal to [PageServiceFailure.dbException()]
      when [ClientSearchEvent.fetchRequested()] is added 
      and [PageService.getPage()] fails""",
        setUp: () {
          pageService = MockClientPageService();
          failure = PageServiceFailure.dbException(error: Exception("error"));
          when(pageService.getPage(
            limit: anyNamed("limit"),
            offset: anyNamed("offset"),
            filter: anyNamed("filter"),
          )).thenAnswer((_) async => Left(failure));
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

      blocTest(
        """Emit [ClientSearchState] with:
    [status] equal to [ClientSearchStatus.loading()]
    [term] equal to [termChanged] value
    call [PageService.getPage()] once
    then emit [ClientSearchState] with:
    [status] equal to [ClientSearchStatus.success()]
    and [clients] equal to [PageService.getPage()] clients
    when [ClientSearchEvent.termChanged(value)] event is added""",
        setUp: () {
          pageService = MockClientPageService();
          clients = _createClients();
          when(pageService.getPage(
            limit: anyNamed("limit"),
            offset: anyNamed("offset"),
            filter: anyNamed("filter"),
          )).thenAnswer((_) async => Right(clients));
        },
        build: () => _createSut(pageService: pageService),
        act: (bloc) =>
            bloc.add(const ClientSearchEvent.termChanged(term: term)),
        expect: () => [
          ClientSearchState.initial().copyWith(
            term: term,
            status: const ClientSearchStatus.loading(),
          ),
          ClientSearchState.initial().copyWith(
            term: term,
            status: const ClientSearchStatus.success(),
            clients: clients,
          )
        ],
        verify: (bloc) => verify(pageService.getPage(
          limit: anyNamed("limit"),
          offset: anyNamed("offset"),
          filter: anyNamed("filter"),
        )).called(1),
      );
    });
  });
}

ClientSearchBloc _createSut({ClientPageService? pageService}) {
  return ClientSearchBloc(pageService ?? MockClientPageService());
}

Iterable<Client> _createClients() {
  return Iterable.generate(5).map(
    (e) => Client(
      id: Uid.fromInt(e),
      name: Name("Bob"),
    ),
  );
}
