import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/details/bloc/details_bloc.dart';
import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/application/load/bloc/load_bloc.dart';
import 'package:appointment/application/edit/bloc/edit_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/presentation/client/details/widgets/client_details_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

import 'client_details_page_mock.dart';
import 'client_details_scaffold_test.mocks.dart';

@GenerateMocks([LoadBloc, DeleteBloc, EditBloc, ClientBloc, DetailsBloc])
void main() {
  late Client johnClient;
  late Client renamedJohnClient;
  late MockLoadBloc<Client> mockLoadBloc;
  late MockEditBloc<Client> mockEditBloc;
  late MockDeleteBloc<Client> mockDeleteBloc;
  late MockDetailsBloc<Client> mockDetailsBloc;
  late MockClientBloc mockClientBloc;

  late MockClientDetailPage mockClientDetailPage;

  setUp(() {
    johnClient = Client(name: Name("John"), id: Uid.fromInt(1));
    renamedJohnClient = johnClient.copyWith(name: Name("Gohn"));
    mockLoadBloc = MockLoadBloc<Client>();
    mockEditBloc = MockEditBloc<Client>();
    mockDeleteBloc = MockDeleteBloc<Client>();
    mockDetailsBloc = MockDetailsBloc<Client>();
    mockClientBloc = MockClientBloc();

    mockClientDetailPage = MockClientDetailPage(
      client: johnClient,
      clientLoadBloc: mockLoadBloc,
      clientDeleteBloc: mockDeleteBloc,
      clientEditBloc: mockEditBloc,
      clientBloc: mockClientBloc,
      detailsBloc: mockDetailsBloc,
      child: const ClientDetailsPageScaffold(),
    );

    when(mockLoadBloc.state).thenReturn(LoadState.loading());
    when(mockEditBloc.state).thenReturn(const EditState.initial());
    when(mockDeleteBloc.state).thenReturn(const DeleteState.initial());
    when(mockClientBloc.state).thenReturn(ClientState.initial());
    when(mockDetailsBloc.state)
        .thenReturn(const DetailsState<Client>.initial());

    when(mockLoadBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockEditBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDeleteBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockClientBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockDetailsBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group("When [LoadState] is [success(client)] ", () {
    setUp(() {
      final state = LoadState.success(entity: johnClient);
      when(mockLoadBloc.state).thenReturn(state);
      when(mockLoadBloc.stream).thenAnswer((_) => Stream.value(state));

      when(mockClientBloc.state).thenReturn(ClientState(client: johnClient));
    });
    testWidgets(
      "Render edit button",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        expect(
          find.widgetWithIcon(IconButton, Icons.edit_outlined),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "Render delete button",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        expect(
          find.widgetWithIcon(IconButton, Icons.delete_outlined),
          findsOneWidget,
        );
      },
    );

    group("When Edit Button is Pressed:", () {
      testWidgets("Add [EditEvent.editPressed()] once ", (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        await tester.tap(find.byIcon(Icons.edit_outlined));
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
            "Display save button enabled "
            "Hide edit button", (tester) async {
          await tester.pumpWidget(mockClientDetailPage);

          expect(
            find.widgetWithIcon(IconButton, Icons.save_outlined),
            findsOneWidget,
          );
          expect(
            find.widgetWithIcon(IconButton, Icons.edit_outlined),
            findsNothing,
          );
        });

        testWidgets(
          "Display cancel button "
          "Hide delete button",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            expect(
              find.widgetWithIcon(IconButton, Icons.cancel_outlined),
              findsOneWidget,
            );
            expect(
              find.widgetWithIcon(IconButton, Icons.delete_outlined),
              findsNothing,
            );
          },
        );

        group("When Save Button is Pressed ", () {
          testWidgets(
            "Render [SaveConfirmationDialog]",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);

              await tester.tap(find.byIcon(Icons.save_outlined));
              await tester.pump();

              expect(find.text(AppLocalizationsEn().save), findsOneWidget);
              expect(find.text(AppLocalizationsEn().cancel), findsOneWidget);
              expect(
                find.widgetWithText(
                  Dialog,
                  AppLocalizationsEn().saveConfirmation,
                ),
                findsOneWidget,
              );
            },
          );
          group("When [SaveConfirmationDialog] Cancel button is pressed", () {
            testWidgets(
              "Hide [SaveConfirmationDialog]",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.save_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().cancel));
                await tester.pump();

                expect(find.text(AppLocalizationsEn().save), findsNothing);
                expect(find.text(AppLocalizationsEn().cancel), findsNothing);
                expect(
                  find.widgetWithText(
                    Dialog,
                    AppLocalizationsEn().saveConfirmation,
                  ),
                  findsNothing,
                );
              },
            );
          });

          group("When [SaveConfirmationDialog] Save button is pressed", () {
            testWidgets(
              "Hide [SaveConfirmationDialog]",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.save_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().save));
                await tester.pump();

                expect(find.text(AppLocalizationsEn().save), findsNothing);
                expect(find.text(AppLocalizationsEn().cancel), findsNothing);
                expect(
                  find.widgetWithText(
                    Dialog,
                    AppLocalizationsEn().saveConfirmation,
                  ),
                  findsNothing,
                );
              },
            );

            testWidgets(
              "Add [EditEvent.savePressed(clientBloc.client)] once ",
              (tester) async {
                when(mockClientBloc.state).thenReturn(ClientState(
                  client: renamedJohnClient,
                ));
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.save_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().save));
                await tester.pump();

                verify(mockEditBloc.add(
                  EditEvent.savePressed(entity: renamedJohnClient),
                )).called(1);
              },
            );
          });
        });

        group("When Stop Editing Button is Pressed ", () {
          testWidgets(
            "Render [StopEditConfirmationDialog]",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);

              await tester.tap(find.byIcon(Icons.cancel_outlined));
              await tester.pump();

              expect(find.text(AppLocalizationsEn().yes), findsOneWidget);
              expect(find.text(AppLocalizationsEn().no), findsOneWidget);
              expect(
                find.widgetWithText(
                  Dialog,
                  AppLocalizationsEn().stopEditingConfirmation,
                ),
                findsOneWidget,
              );
            },
          );
          group("When [StopEditConfirmationDialog] No button is pressed", () {
            testWidgets(
              "Hide [StopEditConfirmationDialog]",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.cancel_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().no));
                await tester.pump();

                expect(find.text(AppLocalizationsEn().yes), findsNothing);
                expect(find.text(AppLocalizationsEn().no), findsNothing);
                expect(
                  find.widgetWithText(
                    Dialog,
                    AppLocalizationsEn().stopEditingConfirmation,
                  ),
                  findsNothing,
                );
              },
            );
          });

          group("When [StopEditConfirmationDialog] Yes button is pressed", () {
            testWidgets(
              "Hide [StopEditConfirmationDialog]",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.cancel_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().yes));
                await tester.pump();

                expect(find.text(AppLocalizationsEn().yes), findsNothing);
                expect(find.text(AppLocalizationsEn().no), findsNothing);
                expect(
                  find.widgetWithText(
                    Dialog,
                    AppLocalizationsEn().stopEditingConfirmation,
                  ),
                  findsNothing,
                );
              },
            );

            testWidgets(
              "Add [DetailsEvent.loaded(clientBloc.client.id)] once ",
              (tester) async {
                when(mockClientBloc.state).thenReturn(
                  ClientState(client: renamedJohnClient),
                );
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.cancel_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().yes));
                await tester.pump();

                verify(mockLoadBloc.add(
                  LoadEvent.loaded(id: renamedJohnClient.id),
                )).called(1);
              },
            );

            testWidgets(
              "Add [EditEvent.cancelPressed()] once ",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);

                await tester.tap(find.byIcon(Icons.cancel_outlined));
                await tester.pump();

                await tester.tap(find.text(AppLocalizationsEn().yes));
                await tester.pump();

                verify(mockEditBloc.add(
                  const EditEvent<Client>.cancelPressed(),
                )).called(1);
              },
            );
          });
        });
      });
    });

    group("When Delete Button is Pressed", () {
      testWidgets(
        "Render [DeleteConfirmationDialog]",
        (tester) async {
          await tester.pumpWidget(mockClientDetailPage);

          await tester.tap(find.byIcon(Icons.delete_outlined));
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

      group("When [DeleteConfirmationDialog] Cancel button is pressed", () {
        testWidgets(
          "Hide [DeleteConfirmationDialog]",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            await tester.tap(find.byIcon(Icons.delete_outlined));
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

      group("When [DeleteConfirmationDialog] Delete button is pressed", () {
        testWidgets(
          "Hide [DeleteConfirmationDialog]",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            await tester.tap(find.byIcon(Icons.delete_outlined));
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

            await tester.tap(find.byIcon(Icons.delete_outlined));
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
