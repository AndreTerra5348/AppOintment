import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

import 'page_mock.dart';
import 'scaffold_test.mocks.dart';

@GenerateMocks([DetailsBloc, DeleteBloc, EditBloc, ClientBloc])
void main() {
  late Client johnClient;
  late Client renamedJohnClient;
  late MockDetailsBloc<Client> mockDetailsBloc;
  late MockEditBloc<Client> mockEditBloc;
  late MockDeleteBloc<Client> mockDeleteBloc;
  late MockClientBloc mockClientBloc;

  late MockClientDetailPage mockClientDetailPage;

  setUp(() {
    johnClient = Client(name: Name("John"), id: Uid.fromInt(1));
    renamedJohnClient = johnClient.copyWith(name: Name("Gohn"));
    mockDetailsBloc = MockDetailsBloc<Client>();
    mockEditBloc = MockEditBloc<Client>();
    mockDeleteBloc = MockDeleteBloc<Client>();
    mockClientBloc = MockClientBloc();

    mockClientDetailPage = MockClientDetailPage(
      client: johnClient,
      clientDetailsBloc: mockDetailsBloc,
      clientDetailsDeleteBloc: mockDeleteBloc,
      clientDetailsEditBloc: mockEditBloc,
      clientBloc: mockClientBloc,
      child: const ClientDetailsPageScaffold(),
    );

    when(mockDetailsBloc.state).thenReturn(DetailsState.loading());
    when(mockEditBloc.state).thenReturn(const EditState.initial());
    when(mockDeleteBloc.state).thenReturn(const DeleteState.initial());
    when(mockClientBloc.state).thenReturn(ClientState.initial());

    when(mockDetailsBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockEditBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockClientBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group("When [DetailsState] is [success(client)] ", () {
    setUp(() {
      final state = DetailsState.success(entity: johnClient);
      when(mockDetailsBloc.state).thenReturn(state);
      when(mockDetailsBloc.stream).thenAnswer((_) => Stream.value(state));

      when(mockClientBloc.state).thenReturn(ClientState(client: johnClient));
    });
    testWidgets(
      "Render edit button",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        expect(
          find.widgetWithIcon(IconButton, Icons.edit),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "Render delete button",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        expect(
          find.widgetWithIcon(IconButton, Icons.delete),
          findsOneWidget,
        );
      },
    );

    group("When Edit Button is Pressed:", () {
      testWidgets("Add [EditEvent.editPressed()] once ", (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        await tester.tap(find.byIcon(Icons.edit));
        await tester.pump();

        verify(mockEditBloc.add(
          const EditEvent.editPressed(),
        )).called(1);
      });

      group("When [EditState] is [editing()]", () {
        setUp(() {
          when(mockEditBloc.state).thenReturn(const EditState.editing());
        });

        testWidgets(
            "Display save button "
            "Hide edit button", (tester) async {
          await tester.pumpWidget(mockClientDetailPage);

          expect(
            find.widgetWithIcon(IconButton, Icons.save),
            findsOneWidget,
          );
          expect(
            find.widgetWithIcon(IconButton, Icons.edit),
            findsNothing,
          );
        });

        testWidgets(
          "Display cancel button "
          "Hide delete button",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            expect(
              find.widgetWithIcon(IconButton, Icons.cancel),
              findsOneWidget,
            );
            expect(
              find.widgetWithIcon(IconButton, Icons.delete),
              findsNothing,
            );
          },
        );

        group("When Save Button is Pressed ", () {
          // TODO: show save confirmation dialog
          testWidgets(
            "Add [EditEvent.savePressed(clientBloc.client)] once ",
            (tester) async {
              when(mockClientBloc.state).thenReturn(ClientState(
                client: renamedJohnClient,
              ));
              await tester.pumpWidget(mockClientDetailPage);

              await tester.tap(find.byIcon(Icons.save));
              await tester.pump();

              verify(mockEditBloc.add(
                EditEvent.savePressed(entity: renamedJohnClient),
              )).called(1);
            },
          );

          group("When [EditState] is [inProgress()] ", () {
            // TODO: disable save button
            // TODO: disable cancel button
          });
        });

        group("When Cancel Button is Pressed ", () {
          testWidgets(
            "Add [DetailsEvent.loaded(clientBloc.client.id)] once ",
            (tester) async {
              when(mockClientBloc.state).thenReturn(
                ClientState(client: renamedJohnClient),
              );
              await tester.pumpWidget(mockClientDetailPage);

              await tester.tap(find.byIcon(Icons.cancel));
              await tester.pump();

              verify(mockDetailsBloc.add(
                DetailsEvent.loaded(id: renamedJohnClient.id),
              )).called(1);
            },
          );

          testWidgets(
            "Add [EditEvent.cancelPressed()] once ",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);

              await tester.tap(find.byIcon(Icons.cancel));
              await tester.pump();

              verify(mockEditBloc.add(
                const EditEvent<Client>.cancelPressed(),
              )).called(1);
            },
          );
        });
      });
    });

    group("When Delete Button is Pressed", () {
      // Delete group
      // TODO: navigate back to previous page when successful dialog is closed

      testWidgets(
        "Render Confirmation dialog",
        (tester) async {
          await tester.pumpWidget(mockClientDetailPage);

          await tester.tap(find.byIcon(Icons.delete));
          await tester.pump();

          expect(find.text(AppLocalizationsEn().delete), findsOneWidget);
          expect(find.text(AppLocalizationsEn().cancel), findsOneWidget);
          expect(
            find.widgetWithText(
              Dialog,
              AppLocalizationsEn().deleteConfirmation(
                johnClient.name.getOrThrow(),
              ),
            ),
            findsOneWidget,
          );
        },
      );

      group("When Confirmation dialog Cancel button is pressed", () {
        testWidgets(
          "Hide Confirmation dialog",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            await tester.tap(find.byIcon(Icons.delete));
            await tester.pump();

            await tester.tap(find.text(AppLocalizationsEn().cancel));
            await tester.pump();

            expect(find.text(AppLocalizationsEn().delete), findsNothing);
            expect(find.text(AppLocalizationsEn().cancel), findsNothing);
            expect(
              find.widgetWithText(
                Dialog,
                AppLocalizationsEn().deleteConfirmation(
                  johnClient.name.getOrThrow(),
                ),
              ),
              findsNothing,
            );
          },
        );
      });

      group("When Confirmation dialog Delete button is pressed", () {
        testWidgets(
          "Hide Confirmation dialog",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            await tester.tap(find.byIcon(Icons.delete));
            await tester.pump();

            await tester.tap(find.text(AppLocalizationsEn().delete));
            await tester.pump();

            expect(find.text(AppLocalizationsEn().delete), findsNothing);
            expect(find.text(AppLocalizationsEn().cancel), findsNothing);
            expect(
              find.widgetWithText(
                Dialog,
                AppLocalizationsEn().deleteConfirmation(
                  johnClient.name.getOrThrow(),
                ),
              ),
              findsNothing,
            );
          },
        );
        testWidgets(
          "Add [DeleteEvent.deleted(clientBloc.client.id)] once ",
          (tester) async {
            when(mockClientBloc.state).thenReturn(
              ClientState(client: renamedJohnClient),
            );
            await tester.pumpWidget(mockClientDetailPage);

            await tester.tap(find.byIcon(Icons.delete));
            await tester.pump();

            await tester.tap(find.text(AppLocalizationsEn().delete));
            await tester.pump();

            verify(mockDeleteBloc.add(
              DeleteEvent.deleted(id: renamedJohnClient.id),
            )).called(1);
          },
        );
      });
    });
  });
}
