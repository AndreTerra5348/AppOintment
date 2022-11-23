import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ClientDetailsBloc", () {
    test(
        "Given [ClientDetailsState.initial()] "
        "[Client.isValid] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc();
      // Act

      // Assert
      expect(sut.state.client.isValid, false);
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[submissionStatus] should be [SubmissionStatus.initial()]", () {
      // Arrange
      final sut = ClientDetailsBloc();
      // Act

      // Assert
      expect(sut.state.submissionStatus, const SubmissionStatus.initial());
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[isEditing] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc();
      // Act

      // Assert
      expect(sut.state.isEditing, false);
    });

    final client = Client(name: Name('John'), id: Uid.fromInt(1));

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.clientLoaded(Client(name: Name('John'), uid: Uid.fromInt(1)))] is added "
      "Then [ClientDetailsState.client] should be [Client(name: Name('John'), uid: Uid.fromInt(1))]"
      "And [ClientDetailsState.isEditing] should be false"
      "And [ClientDetailsState.submissionStatus] should be [SubmissionStatus.initial()]",
      build: () => ClientDetailsBloc(),
      act: (bloc) => bloc.add(ClientDetailsEvent.clientLoaded(client: client)),
      expect: () => [
        ClientDetailsState(
          client: client,
          isEditing: false,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.editPressed()] is added "
      "Then [ClientDetailsState.isEditing] should be true"
      "And [ClientDetailsState.submissionStatus] should be [SubmissionStatus.initial()]",
      build: () => ClientDetailsBloc(),
      act: (bloc) => bloc.add(const ClientDetailsEvent.editPressed()),
      expect: () => [
        ClientDetailsState(
          client: Client.withoutUid(name: Name('')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.nameChanged(name: 'John')] is added "
      "Then [ClientDetailsState.client] should be [Client(name: Name('John'))]"
      "And [ClientDetailsState.isEditing] should be true"
      "And [ClientDetailsState.submissionStatus] should be [SubmissionStatus.initial()]",
      build: () => ClientDetailsBloc(),
      act: (bloc) =>
          bloc.add(const ClientDetailsEvent.nameChanged(name: 'John')),
      expect: () => [
        ClientDetailsState(
          client: Client.withoutUid(name: Name('John')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.savePressed()] is added "
      """Then [ClientDetailsState.submissionStatus] should be 
      [SubmissionStatus.failure(failure: SubmissionFailure.invalidFields())]""",
      build: () => ClientDetailsBloc(),
      act: (bloc) => bloc.add(const ClientDetailsEvent.savePressed()),
      expect: () => [
        ClientDetailsState(
          client: Client.withoutUid(name: Name('')),
          isEditing: false,
          submissionStatus: const SubmissionStatus.failure(
            failure: SubmissionFailure.invalidFields(),
          ),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.nameChanged(name: 'John')], "
      "[ClientDetailsEvent.savePressed()] is added "
      "Then [ClientDetailsState.client] should be [Client(name: Name('John'))]"
      "And [ClientDetailsState.isEditing] should be false"
      "And [ClientDetailsState.submissionStatus] should be [SubmissionStatus.inProgress()]",
      build: () => ClientDetailsBloc(),
      act: (bloc) {
        bloc.add(const ClientDetailsEvent.nameChanged(name: 'John'));
        bloc.add(const ClientDetailsEvent.savePressed());
      },
      expect: () => [
        ClientDetailsState(
          client: Client.withoutUid(name: Name('John')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.initial(),
        ),
        ClientDetailsState(
          client: Client.withoutUid(name: Name('John')),
          isEditing: false,
          submissionStatus: const SubmissionStatus.inProgress(),
        ),
      ],
    );
  });
}
