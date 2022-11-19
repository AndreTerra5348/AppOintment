import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/common/pagination.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dao>(unsupportedMembers: {#table}),
  MockSpec<IPageService>(),
])
void main() {
  group("ClientSearchBloc - ", () {
    group("Initial Values -", initialValuesTests);
    group("Events -", eventsTests);
  });
}

typedef _WhenCallback = void Function(
    MockIPageService<Client, ClientModels, ClientModel> pageService);

ClientSearchBloc _createSut({_WhenCallback? whenCallback}) {
  final pageService = MockIPageService<Client, ClientModels, ClientModel>();

  whenCallback?.call(pageService);

  return ClientSearchBloc(pageService);
}

void initialValuesTests() {
  test("Initial state should be [ClientSearchBloc.initial()]", () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state, ClientSearchState.initial());
  });

  test("Initial term should be empty", () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.term, isEmpty);
  });

  test("Initial SearchFilter should be [SearchFilter.name()]", () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.filter, const SearchFilter.name());
  });

  test("Initial state getFilter should return ClientNameFilter", () {
    // Arrange
    final sut = _createSut();
    final clientDao = MockDao<ClientModels, ClientModel>();
    // Act

    //Assert
    expect(sut.state.getFilter(clientDao), isA<ClientNameFilter>());
  });

  test("Initial [Pagination] should return empty", () {
    // Arrange
    final sut = _createSut();
    // Act

    //Assert
    expect(sut.state.pagination, Pagination.empty());
  });
}

void eventsTests() {
  const term = "Bob";
  blocTest(
    "Emit [ClientSearchState.initial] with term when termChanged event is added",
    build: () => _createSut(),
    act: (bloc) => bloc.add(const ClientSearchEvent.termChanged(term: term)),
    expect: () => [ClientSearchState.initial().copyWith(term: term)],
  );
}
