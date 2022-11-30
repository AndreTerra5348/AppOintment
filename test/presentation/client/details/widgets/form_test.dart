import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/client/details/delete/bloc/bloc.dart';
import 'package:appointment/application/client/details/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'form_test.mocks.dart';
import 'page_mock.dart';

@GenerateMocks(
    [ClientDetailsBloc, ClientDetailsEditBloc, ClientDetailsDeleteBloc])
void main() {
  group("ClientDetailsFormWidget", () {
    late Client client;
    late MockClientDetailsBloc mockClientDetailsBloc;
    late MockClientDetailsEditBloc mockClientDetailsEditBloc;
    late MockClientDetailsDeleteBloc mockClientDetailsDeleteBloc;

    setUp(() {
      client = Client(name: Name("John"), id: Uid.fromInt(1));
      mockClientDetailsBloc = MockClientDetailsBloc();
      mockClientDetailsEditBloc = MockClientDetailsEditBloc();
      mockClientDetailsDeleteBloc = MockClientDetailsDeleteBloc();

      when(mockClientDetailsBloc.state)
          .thenReturn(ClientDetailsState.initial().copyWith(client: client));
      when(mockClientDetailsEditBloc.state)
          .thenReturn(ClientDetailsEditState.initial());
      when(mockClientDetailsDeleteBloc.state)
          .thenReturn(ClientDetailsDeleteState.initial());

      when(mockClientDetailsBloc.stream)
          .thenAnswer((_) => const Stream.empty());
      when(mockClientDetailsEditBloc.stream)
          .thenAnswer((_) => const Stream.empty());
      when(mockClientDetailsDeleteBloc.stream)
          .thenAnswer((_) => const Stream.empty());
    });

    testWidgets("should display loading indicator", (tester) async {
      when(mockClientDetailsBloc.state)
          .thenReturn(ClientDetailsState.initial());

      await tester.pumpWidget(MockClientDetailPage(
        client: client,
        clientDetailsBloc: mockClientDetailsBloc,
        clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
        clientDetailsEditBloc: mockClientDetailsEditBloc,
        shouldAddClient: false,
        child: const ClientDetailsFormWidget(),
      ));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets("should display client name", (tester) async {
      await tester.pumpWidget(MockClientDetailPage(
        client: client,
        clientDetailsBloc: mockClientDetailsBloc,
        clientDetailsEditBloc: mockClientDetailsEditBloc,
        clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
        child: const ClientDetailsFormWidget(),
      ));

      expect(find.text("John"), findsOneWidget);
    });

    testWidgets("should display edit button", (tester) async {
      await tester.pumpWidget(MockClientDetailPage(
        client: client,
        clientDetailsBloc: mockClientDetailsBloc,
        clientDetailsEditBloc: mockClientDetailsEditBloc,
        clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
        child: const ClientDetailsFormWidget(),
      ));

      expect(find.byIcon(Icons.edit), findsOneWidget);
    });

    // TODO: Edit group
    // TODO: Edit Button should be displayed when ClientDetailsEditState.isEditing is false
    // TODO: Edit button should turn into save button when pressed
    // TODO: Edit button should call ClientDetailsEditBloc.editPressed(client) when pressed

    // Cancel group
    // TODO: Cancel button should be displayed when edit button is pressed
    // TODO: Cancel button should call ClientDetailsEditBloc.cancelPressed() when pressed
    // TODO: loading indicator should be displayed when cancel button is pressed

    // Delete group
    // TODO: Delete button should be displayed when isEditing is false
    // TODO: Delete confirmation dialog should be displayed when delete button is pressed
    // TODO: Show loading indicator when deleting

    // Save group
    // TODO: Save button should be displayed when edit button is pressed
    // TODO: Show loading indicator when saving
  });
}
