import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientSearchBloc - ", () {
    group("Initial Values -", initialValuesTests);
  });
}

void initialValuesTests() {
  test("Initial state should be [ClientSearchBloc.initial()]", () {
    // Arrange
    final sut = ClientSearchBloc();
    // Act

    //Assert
    expect(sut.state, const ClientSearchState.initial());
  });
}
