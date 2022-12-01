import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/client/details/delete/bloc/bloc.dart';
import 'package:appointment/application/client/details/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/widgets/name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'name_input_test.mocks.dart';
import 'page_mock.dart';

@GenerateMocks(
    [ClientDetailsBloc, ClientDetailsEditBloc, ClientDetailsDeleteBloc])
void main() {
  group("ClientDetailsPage NameInputWidget: ", () {
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
    testWidgets("renders a TextFormField", (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(
        MockClientDetailPage(
          client: client,
          clientDetailsBloc: mockClientDetailsBloc,
          clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
          clientDetailsEditBloc: mockClientDetailsEditBloc,
          child: const NameInputWidget(),
        ),
      );
      // act
      final nameInputFinder = find.byType(TextFormField);
      // assert
      expect(nameInputFinder, findsOneWidget);
    });

    testWidgets("renders a TextFormField with initial value",
        (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(
        MockClientDetailPage(
          client: client,
          clientDetailsBloc: mockClientDetailsBloc,
          clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
          clientDetailsEditBloc: mockClientDetailsEditBloc,
          child: const NameInputWidget(),
        ),
      );
      // act
      final nameInputFinder = find.byType(TextFormField);
      final nameInputWidget =
          nameInputFinder.evaluate().single.widget as TextFormField;
      // assert
      expect(nameInputWidget.initialValue, client.name.getOrThrow());
    });

    testWidgets("renders a TextFormField with correct label",
        (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(
        MockClientDetailPage(
          client: client,
          clientDetailsBloc: mockClientDetailsBloc,
          clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
          clientDetailsEditBloc: mockClientDetailsEditBloc,
          child: const NameInputWidget(),
        ),
      );
      // act
      // assert
      expect(find.text(AppLocalizationsEn().nameTextFormField), findsOneWidget);
    });

    testWidgets(
        "Given initial state, "
        "renders a TextFormField with enable equal to false",
        (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(
        MockClientDetailPage(
          client: client,
          clientDetailsBloc: mockClientDetailsBloc,
          clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
          clientDetailsEditBloc: mockClientDetailsEditBloc,
          child: const NameInputWidget(),
        ),
      );
      // act
      // assert
      TextFormField nameInputWidget = tester.widget(find.byType(TextFormField));
      expect(find.byType(TextFormField), findsOneWidget);
      expect(nameInputWidget.enabled, isFalse);
    });

    testWidgets(
        "Given [ClientDetailsEditState.isEditing] true, "
        "renders a TextFormField with enabled", (WidgetTester tester) async {
      // arrange
      when(mockClientDetailsEditBloc.state).thenReturn(
          ClientDetailsEditState.initial().copyWith(isEditing: true));
      await tester.pumpWidget(
        MockClientDetailPage(
          client: client,
          clientDetailsBloc: mockClientDetailsBloc,
          clientDetailsDeleteBloc: mockClientDetailsDeleteBloc,
          clientDetailsEditBloc: mockClientDetailsEditBloc,
          child: const NameInputWidget(),
        ),
      );
      // act
      // assert
      TextFormField nameInputWidget = tester.widget(find.byType(TextFormField));
      expect(find.byType(TextFormField), findsOneWidget);
      expect(nameInputWidget.enabled, isTrue);
    });
  });
}
