import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/infrastructure/client/filter.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dao>(unsupportedMembers: {#table})
])
void main() {
  group("ClientSearchBloc - ", () {
    group("Initial Values -", initialValuesTests);
    group("Events -", eventsTests);
  });
}

void initialValuesTests() {
  test("Initial state should be [ClientSearchBloc.initial()]", () {
    // Arrange
    final sut = ClientSearchBloc();
    // Act

    //Assert
    expect(sut.state, ClientSearchState.initial());
  });

  test("Initial term should be empty", () {
    // Arrange
    final sut = ClientSearchBloc();
    // Act

    //Assert
    expect(sut.state.term, isEmpty);
  });

  test("Initial SearchFilter should be [SearchFilter.name()]", () {
    // Arrange
    final sut = ClientSearchBloc();
    // Act

    //Assert
    expect(sut.state.filter, const SearchFilter.name());
  });

  test("Initial state getFilter should return ClientNameFilter", () {
    // Arrange
    final sut = ClientSearchBloc();
    final clientDao = MockDao<ClientModels, ClientModel>();
    // Act

    //Assert
    expect(sut.state.getFilter(clientDao), isA<ClientNameFilter>());
  });
}

void eventsTests() {
  const term = "Bob";
  blocTest(
    "Emit [ClientSearchState.initial] with term when termChanged event is added",
    build: () => ClientSearchBloc(),
    act: (bloc) => bloc.add(const ClientSearchEvent.termChanged(term: term)),
    expect: () => [ClientSearchState.initial().copyWith(term: term)],
  );
}
