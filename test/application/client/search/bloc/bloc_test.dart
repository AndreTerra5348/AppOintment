import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/common/pagination.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/page_service.dart';
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
    group("Initial Values -", initialValuesTests);
    group("Events -", eventsTests);
  });
}

ClientSearchBloc _createSut({ClientPageService? pageService}) {
  return ClientSearchBloc(pageService ?? MockClientPageService());
}

void initialValuesTests() {
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

  test("[ClientSearchBloc.initial().isLoading] should be true", () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.isLoading, isTrue);
  });

  test(
      "[ClientSearchBloc.initial().SearchFilter]  should be [SearchFilter.name()]",
      () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.filter, const SearchFilter.name());
  });

  test(
      "[ClientSearchBloc.initial().getFilter()]  should return ClientNameFilter",
      () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.getFilter(), isA<ClientNameFilter>());
  });

  test(
      "[ClientSearchBloc.initial().pagination] should return [Pagination.empty()]",
      () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.pagination, Pagination.empty());
  });
}

void eventsTests() {
  const term = "Bob";
  late MockClientPageService pageService;
  blocTest(
    """Emit [ClientSearchState.initial] with isLoading equal to true, 
    and call [PageService.getPage()] once
    when termChanged event is added""",
    setUp: () {
      pageService = MockClientPageService();
      final clients = Iterable.generate(5).map((e) => Client(
            id: Uid.fromInt(e),
            name: Name("Bob"),
          ));
      when(pageService.getPage(
        limit: anyNamed("limit"),
        offset: anyNamed("offset"),
        filter: anyNamed("filter"),
      )).thenAnswer((_) async => Right(clients));
    },
    build: () => _createSut(pageService: pageService),
    act: (bloc) => bloc.add(const ClientSearchEvent.termChanged(term: term)),
    // expect: () =>
    //     [ClientSearchState.initial().copyWith(term: term, isLoading: true)],
    verify: (bloc) => verify(pageService.getPage(
      limit: anyNamed("limit"),
      offset: anyNamed("offset"),
      filter: anyNamed("filter"),
    )).called(1),
  );
}
