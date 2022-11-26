import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'bloc_test.mocks.dart';

@GenerateMocks([ClientRepository])
void main() {
  group("ClientDetailsBloc", () {
    late MockClientRepository repository;
    test(
        "Given [ClientDetailsState.initial()] "
        "[client.isValid] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act

      // Assert
      expect(sut.state.client.isValid, false);
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[submissionStatus] should be [initial()]", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act

      // Assert
      expect(sut.state.submissionStatus, const SubmissionStatus.initial());
    });

    test(
        "Given [ClientDetailsState.initial()] "
        "[isEditing] should be false", () {
      // Arrange
      final sut = ClientDetailsBloc(MockClientRepository());
      // Act

      // Assert
      expect(sut.state.isEditing, false);
    });

    final johnClient = Client(name: Name('John'), id: Uid.fromInt(1));
    final bobClient = Client(name: Name('Bob'), id: Uid.fromInt(2));

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.clientLoaded()] is added with valid client"
      "Then [ClientDetailsState.client] should be valid"
      "And [ClientDetailsState.isEditing] should be false"
      "And [ClientDetailsState.submissionStatus] should be [initial()]",
      build: () => ClientDetailsBloc(MockClientRepository()),
      act: (bloc) =>
          bloc.add(ClientDetailsEvent.clientLoaded(client: johnClient)),
      expect: () => [
        ClientDetailsState(
          client: johnClient,
          isEditing: false,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "When [ClientDetailsEvent.clientLoaded()] is added with invalid client"
      "Then [ClientDetailsBloc] should throw",
      build: () => ClientDetailsBloc(MockClientRepository()),
      act: (bloc) {
        bloc.add(
          ClientDetailsEvent.clientLoaded(
            client: Client.withoutUid(
              name: Name(''),
            ),
          ),
        );
      },
      errors: (() => [isA<Exception>()]),
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "With valid [ClientDetailsState.client]"
      "When [ClientDetailsEvent.editPressed()] is added "
      "Then [ClientDetailsState.isEditing] should be true"
      "And [ClientDetailsState.submissionStatus] should be [initial()]",
      build: () => ClientDetailsBloc(MockClientRepository()),
      act: (bloc) {
        bloc.add(ClientDetailsEvent.clientLoaded(client: johnClient));
        bloc.add(const ClientDetailsEvent.editPressed());
      },
      skip: 1,
      expect: () => [
        ClientDetailsState(
          client: johnClient,
          isEditing: true,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "And [ClientDetailsState.clientLoaded] with a client named John "
      "And [ClientDetailsEvent.NameChanged('Bob')] is added "
      "When [ClientDetailsEvent.editCanceled()] is added "
      "Then [ClientDetailsState.submissionStatus] should be [inProgress()] "
      "And [ClientDetailsState.client] should be named Bob "
      "And [ClientDetailsState.isEditing] should be true "
      "Then [Repository.getById()] should be called once "
      "And [ClientDetailsState.submissionStatus] should be [initial()] "
      "And [ClientDetailsState.isEditing] should be false "
      "And [ClientDetailsState.client] should be named John",
      setUp: () {
        repository = MockClientRepository();
        when(repository.getById(any))
            .thenAnswer((_) async => right(johnClient));
      },
      build: () => ClientDetailsBloc(repository),
      act: (bloc) {
        bloc.add(ClientDetailsEvent.clientLoaded(client: johnClient));
        bloc.add(const ClientDetailsEvent.editPressed());
        bloc.add(const ClientDetailsEvent.nameChanged(name: 'Bob'));
        bloc.add(const ClientDetailsEvent.editCanceled());
      },
      skip: 3,
      expect: () => [
        ClientDetailsState(
          client: johnClient.copyWith(name: Name('Bob')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.inProgress(),
        ),
        ClientDetailsState(
          client: johnClient,
          isEditing: false,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
      verify: (_) {
        verify(repository.getById(johnClient.id)).called(1);
      },
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "With valid [ClientDetailsState.client]"
      "And [ClientDetailsState.isEditing] true"
      "When [ClientDetailsEvent.nameChanged(name: 'John')] is added "
      "Then [ClientDetailsState.client] should be [Client(name: Name('John'))]"
      "And [ClientDetailsState.isEditing] should be true"
      "And [ClientDetailsState.submissionStatus] should be [initial()]",
      build: () => ClientDetailsBloc(MockClientRepository()),
      act: (bloc) {
        bloc.add(ClientDetailsEvent.clientLoaded(client: bobClient));
        bloc.add(const ClientDetailsEvent.editPressed());
        bloc.add(const ClientDetailsEvent.nameChanged(name: 'John'));
      },
      skip: 2,
      expect: () => [
        ClientDetailsState(
          client: bobClient.copyWith(name: Name('John')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.initial(),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "With invalid [ClientDetailsState.client]"
      "And [ClientDetailsState.isEditing] true"
      "When [ClientDetailsEvent.savePressed()] is added "
      """Then [ClientDetailsState.submissionStatus] should be 
      [failure(failure: SubmissionFailure.invalidFields())]"""
      "And [ClientDetailsState.isEditing] should be true",
      setUp: () {
        repository = MockClientRepository();
        when(repository.update(any)).thenAnswer(
          (_) async => const Right(true),
        );
      },
      build: () => ClientDetailsBloc(repository),
      act: (bloc) {
        bloc.add(ClientDetailsEvent.clientLoaded(client: bobClient));
        bloc.add(const ClientDetailsEvent.editPressed());
        bloc.add(const ClientDetailsEvent.nameChanged(name: ""));
        bloc.add(const ClientDetailsEvent.savePressed());
      },
      skip: 3,
      expect: () => [
        ClientDetailsState(
          client: bobClient.copyWith(name: Name('')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.failure(
            failure: SubmissionFailure.invalidFields(),
          ),
        ),
      ],
    );

    blocTest(
      "Given [ClientDetailsState.initial()] "
      "With valid [ClientDetailsState.client] "
      "When [ClientDetailsEvent.savePressed()] is added "
      "[ClientDetailsState.isEditing] should be false"
      "And [ClientDetailsState.submissionStatus] should be [inProgress()]"
      "Then [Repository.update()] should be called once"
      "Then [ClientDetailsState.submissionStatus] should be [success()]"
      "And [ClientDetailsState.client] should be valid"
      "And [ClientDetailsState.isEditing] should be false",
      setUp: () {
        repository = MockClientRepository();
        when(repository.update(any)).thenAnswer(
          (_) async => const Right(true),
        );
      },
      build: () => ClientDetailsBloc(repository),
      act: (bloc) {
        bloc.add(ClientDetailsEvent.clientLoaded(client: bobClient));
        bloc.add(const ClientDetailsEvent.editPressed());
        bloc.add(const ClientDetailsEvent.nameChanged(name: 'John'));
        bloc.add(const ClientDetailsEvent.savePressed());
      },
      skip: 3,
      expect: () => [
        ClientDetailsState(
          client: bobClient.copyWith(name: Name('John')),
          isEditing: true,
          submissionStatus: const SubmissionStatus.inProgress(),
        ),
        ClientDetailsState(
          client: bobClient.copyWith(name: Name('John')),
          isEditing: false,
          submissionStatus: const SubmissionStatus.success(),
        ),
      ],
      verify: (_) {
        verify(repository.update(bobClient.copyWith(name: Name('John'))))
            .called(1);
      },
    );
  });
}
