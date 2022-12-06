import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/common/widgets/name_input.dart';
import 'package:appointment/presentation/client/details/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'form_test.mocks.dart';
import 'page_mock.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

import '../../../../common/failure_fixture.dart' as mock_failure;

@GenerateMocks([DetailsBloc, EditBloc, DeleteBloc, ClientBloc])
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
      child: const ClientDetailsFormWidget(),
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

  group("Given [DetailsState] is [loading()]", () {
    testWidgets("Render loading indicator", (tester) async {
      await tester.pumpWidget(mockClientDetailPage);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets("DO NOT Render NameInputWidget", (tester) async {
      await tester.pumpWidget(mockClientDetailPage);

      expect(find.byType(NameInputWidget), findsNothing);
    });
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
          find.widgetWithIcon(ElevatedButton, Icons.edit),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "Render delete button",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        expect(
          find.widgetWithIcon(ElevatedButton, Icons.delete),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "Render NameInputWidget with client name",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        expect(find.byType(NameInputWidget), findsOneWidget);
        expect(
          find.widgetWithText(NameInputWidget, johnClient.name.getOrThrow()),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "Add [ClientEvent.loaded(client)] with loaded client once",
      (tester) async {
        await tester.pumpWidget(mockClientDetailPage);

        await tester.pump();

        verify(
          mockClientBloc.add(ClientEvent.loaded(client: johnClient)),
        ).called(1);
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
          "All TextFormFields should be enabled ",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            expect(find.byType(TextFormField), findsNWidgets(1));
            expect(
              find.byWidgetPredicate(
                (widget) => widget is TextFormField && widget.enabled,
              ),
              findsNWidgets(1),
            );
          },
        );

        testWidgets(
            "Display save button "
            "Hide edit button", (tester) async {
          await tester.pumpWidget(mockClientDetailPage);

          expect(
            find.widgetWithIcon(ElevatedButton, Icons.save),
            findsOneWidget,
          );
          expect(
            find.widgetWithIcon(ElevatedButton, Icons.edit),
            findsNothing,
          );
        });

        testWidgets(
          "Display cancel button "
          "Hide delete button",
          (tester) async {
            await tester.pumpWidget(mockClientDetailPage);

            expect(
              find.widgetWithIcon(ElevatedButton, Icons.cancel),
              findsOneWidget,
            );
            expect(
              find.widgetWithIcon(ElevatedButton, Icons.delete),
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
            testWidgets(
              "Show loading indicator",
              (tester) async {
                when(mockEditBloc.state).thenReturn(
                  const EditState.inProgress(),
                );
                await tester.pumpWidget(mockClientDetailPage);

                expect(find.byType(CircularProgressIndicator), findsOneWidget);
              },
            );
            // TODO: disable save button
            // TODO: disable cancel button
          });
          group("When [EditState] is [success()] ", () {
            setUp(() {
              const state = EditState.success();
              when(mockEditBloc.state).thenReturn(state);
              when(mockEditBloc.stream).thenAnswer((_) => Stream.value(state));
            });
            testWidgets(
              "Add [DetailsEvent.loaded(clientBloc.client.id)] once",
              (tester) async {
                when(mockClientBloc.state).thenReturn(
                  ClientState(client: renamedJohnClient),
                );
                await tester.pumpWidget(mockClientDetailPage);

                verify(mockDetailsBloc.add(
                  DetailsEvent.loaded(id: renamedJohnClient.id),
                )).called(1);
              },
            );

            testWidgets(
              "Hide loading indicator ",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);

                expect(find.byType(CircularProgressIndicator), findsNothing);
              },
            );

            testWidgets(
              "Show Icons.check_circle_outline for 1 second",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);
                await tester.pump();

                expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);

                await tester.pump(const Duration(seconds: 1));

                expect(find.byIcon(Icons.check_circle_outline), findsNothing);
              },
            );
          });
          group("When [EditState] is [failure()] ", () {
            setUp(() {
              final state = EditState.repositoryFailure(
                failure: mock_failure.dbErrorRepositoryFailure,
              );
              when(mockEditBloc.state).thenReturn(state);
              when(mockEditBloc.stream).thenAnswer(
                (_) => Stream.value(state),
              );
            });

            testWidgets(
              "Show Icons.error_outline for 1 second",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);
                await tester.pump();

                expect(find.byIcon(Icons.error_outline), findsOneWidget);

                await tester.pump(const Duration(seconds: 1));

                expect(find.byIcon(Icons.error_outline), findsNothing);
              },
            );

            testWidgets(
              "Show failure message for 1 second",
              (tester) async {
                await tester.pumpWidget(mockClientDetailPage);
                await tester.pump();

                expect(
                  find.text(mock_failure.dbErrorLocalizedMessage),
                  findsOneWidget,
                );

                await tester.pump(const Duration(seconds: 1));

                expect(
                  find.text(mock_failure.dbErrorLocalizedMessage),
                  findsNothing,
                );
              },
            );
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

        group("When [DeleteState] is [inProgress()]", () {
          setUp(() {
            when(mockDeleteBloc.state)
                .thenReturn(const DeleteState.inProgress());
          });
          testWidgets(
            "Render loading indicator",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);

              await tester.tap(find.byIcon(Icons.delete));
              await tester.pump();

              await tester.tap(find.text(AppLocalizationsEn().delete));
              await tester.pump();

              expect(find.byType(CircularProgressIndicator), findsOneWidget);
            },
          );
        });

        group("When [DeleteState] is [success()]", () {
          setUp(() {
            when(mockDeleteBloc.state).thenReturn(
              const DeleteState.success(),
            );
            when(mockDeleteBloc.stream).thenAnswer(
              (_) => Stream.value(const DeleteState.success()),
            );
          });
          testWidgets(
            "Hide loading indicator ",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);

              expect(find.byType(CircularProgressIndicator), findsNothing);
            },
          );

          testWidgets(
            "Show Icons.check_circle_outline for 1 second",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);
              await tester.pump();

              expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);

              await tester.pump(const Duration(seconds: 1));

              expect(find.byIcon(Icons.check_circle_outline), findsNothing);
            },
          );
        });

        group("When [DeleteState] is [failure()]", () {
          setUp(() {
            const state = DeleteState.failure(
              failure: mock_failure.dbErrorSubmissionFailure,
            );
            when(mockDeleteBloc.state).thenReturn(state);
            when(mockDeleteBloc.stream).thenAnswer(
              (_) => Stream.value(state),
            );
          });
          testWidgets(
            "Show Icons.error_outline for 1 second",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);
              await tester.pump();

              expect(find.byIcon(Icons.error_outline), findsOneWidget);

              await tester.pump(const Duration(seconds: 1));

              expect(find.byIcon(Icons.error_outline), findsNothing);
            },
          );

          testWidgets(
            "Show failure message for 1 second",
            (tester) async {
              await tester.pumpWidget(mockClientDetailPage);
              await tester.pump();

              expect(
                find.text(mock_failure.dbErrorLocalizedMessage),
                findsOneWidget,
              );

              await tester.pump(const Duration(seconds: 1));

              expect(
                find.text(mock_failure.dbErrorLocalizedMessage),
                findsNothing,
              );
            },
          );
        });
      });
    });
  });
}
