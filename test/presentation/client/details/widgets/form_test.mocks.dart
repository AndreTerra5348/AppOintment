// Mocks generated by Mockito 5.3.2 from annotations
// in appointment/test/presentation/client/details/widgets/form_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i11;

import 'package:appointment/application/client/bloc/bloc.dart' as _i6;
import 'package:appointment/application/delete/bloc/bloc.dart' as _i5;
import 'package:appointment/application/edit/bloc/bloc.dart' as _i4;
import 'package:appointment/application/load/bloc/bloc.dart' as _i3;
import 'package:appointment/domain/common/entity_mixin.dart' as _i1;
import 'package:appointment/domain/common/values.dart' as _i14;
import 'package:appointment/infrastructure/client/dao.dart' as _i13;
import 'package:appointment/infrastructure/client/table.dart' as _i7;
import 'package:appointment/infrastructure/core/filter.dart' as _i15;
import 'package:appointment/infrastructure/drift/db.dart' as _i8;
import 'package:bloc/bloc.dart' as _i12;
import 'package:drift/drift.dart' as _i9;
import 'package:drift/src/runtime/executor/stream_queries.dart' as _i10;
import 'package:mockito/mockito.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeLoadState_0<T extends _i1.EntityMixin> extends _i2.SmartFake
    implements _i3.LoadState<T> {
  _FakeLoadState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEditState_1 extends _i2.SmartFake implements _i4.EditState {
  _FakeEditState_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeleteState_2 extends _i2.SmartFake implements _i5.DeleteState {
  _FakeDeleteState_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClientState_3 extends _i2.SmartFake implements _i6.ClientState {
  _FakeClientState_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClientModels_4 extends _i2.SmartFake implements _i7.ClientModels {
  _FakeClientModels_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDriftDb_5 extends _i2.SmartFake implements _i8.DriftDb {
  _FakeDriftDb_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseConnection_6 extends _i2.SmartFake
    implements _i9.DatabaseConnection {
  _FakeDatabaseConnection_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDriftDatabaseOptions_7 extends _i2.SmartFake
    implements _i9.DriftDatabaseOptions {
  _FakeDriftDatabaseOptions_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQueryExecutor_8 extends _i2.SmartFake implements _i9.QueryExecutor {
  _FakeQueryExecutor_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamQueryStore_9 extends _i2.SmartFake
    implements _i10.StreamQueryStore {
  _FakeStreamQueryStore_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseConnectionUser_10 extends _i2.SmartFake
    implements _i9.DatabaseConnectionUser {
  _FakeDatabaseConnectionUser_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$ClientModelsTable_11 extends _i2.SmartFake
    implements _i8.$ClientModelsTable {
  _Fake$ClientModelsTable_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeClientModel_12 extends _i2.SmartFake implements _i8.ClientModel {
  _FakeClientModel_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInsertStatement_13<T extends _i9.Table, D> extends _i2.SmartFake
    implements _i9.InsertStatement<T, D> {
  _FakeInsertStatement_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUpdateStatement_14<T extends _i9.Table, D> extends _i2.SmartFake
    implements _i9.UpdateStatement<T, D> {
  _FakeUpdateStatement_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSimpleSelectStatement_15<T extends _i9.HasResultSet, D>
    extends _i2.SmartFake implements _i9.SimpleSelectStatement<T, D> {
  _FakeSimpleSelectStatement_15(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJoinedSelectStatement_16<FirstT extends _i9.HasResultSet, FirstD>
    extends _i2.SmartFake implements _i9.JoinedSelectStatement<FirstT, FirstD> {
  _FakeJoinedSelectStatement_16(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeleteStatement_17<T extends _i9.Table, D> extends _i2.SmartFake
    implements _i9.DeleteStatement<T, D> {
  _FakeDeleteStatement_17(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSelectable_18<T> extends _i2.SmartFake implements _i9.Selectable<T> {
  _FakeSelectable_18(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGenerationContext_19 extends _i2.SmartFake
    implements _i9.GenerationContext {
  _FakeGenerationContext_19(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LoadBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoadBloc<T extends _i1.EntityMixin> extends _i2.Mock
    implements _i3.LoadBloc<T> {
  MockLoadBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i3.LoadState<T> get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeLoadState_0<T>(
          this,
          Invocation.getter(#state),
        ),
      ) as _i3.LoadState<T>);
  @override
  _i11.Stream<_i3.LoadState<T>> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i11.Stream<_i3.LoadState<T>>.empty(),
      ) as _i11.Stream<_i3.LoadState<T>>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i3.LoadEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i3.LoadEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i3.LoadState<T>? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i3.LoadEvent>(
    _i12.EventHandler<E, _i3.LoadState<T>>? handler, {
    _i12.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onTransition(
          _i12.Transition<_i3.LoadEvent, _i3.LoadState<T>>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i11.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  void onChange(_i12.Change<_i3.LoadState<T>>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [EditBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockEditBloc<T extends _i1.EntityMixin> extends _i2.Mock
    implements _i4.EditBloc<T> {
  MockEditBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i4.EditState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeEditState_1(
          this,
          Invocation.getter(#state),
        ),
      ) as _i4.EditState);
  @override
  _i11.Stream<_i4.EditState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i11.Stream<_i4.EditState>.empty(),
      ) as _i11.Stream<_i4.EditState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i4.EditEvent<T>? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i4.EditEvent<T>? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i4.EditState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i4.EditEvent<T>>(
    _i12.EventHandler<E, _i4.EditState>? handler, {
    _i12.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onTransition(
          _i12.Transition<_i4.EditEvent<T>, _i4.EditState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i11.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  void onChange(_i12.Change<_i4.EditState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DeleteBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteBloc<T extends _i1.EntityMixin> extends _i2.Mock
    implements _i5.DeleteBloc<T> {
  MockDeleteBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i5.DeleteState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeDeleteState_2(
          this,
          Invocation.getter(#state),
        ),
      ) as _i5.DeleteState);
  @override
  _i11.Stream<_i5.DeleteState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i11.Stream<_i5.DeleteState>.empty(),
      ) as _i11.Stream<_i5.DeleteState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i5.DeleteEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i5.DeleteEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i5.DeleteState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i5.DeleteEvent>(
    _i12.EventHandler<E, _i5.DeleteState>? handler, {
    _i12.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onTransition(
          _i12.Transition<_i5.DeleteEvent, _i5.DeleteState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i11.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  void onChange(_i12.Change<_i5.DeleteState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ClientBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockClientBloc extends _i2.Mock implements _i6.ClientBloc {
  MockClientBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i6.ClientState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeClientState_3(
          this,
          Invocation.getter(#state),
        ),
      ) as _i6.ClientState);
  @override
  _i11.Stream<_i6.ClientState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i11.Stream<_i6.ClientState>.empty(),
      ) as _i11.Stream<_i6.ClientState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i6.ClientEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i6.ClientEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i6.ClientState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i6.ClientEvent>(
    _i12.EventHandler<E, _i6.ClientState>? handler, {
    _i12.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onTransition(
          _i12.Transition<_i6.ClientEvent, _i6.ClientState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i11.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  void onChange(_i12.Change<_i6.ClientState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ClientDao].
///
/// See the documentation for Mockito's code generation for more information.
class MockClientDao extends _i2.Mock implements _i13.ClientDao {
  @override
  _i7.ClientModels get table => (super.noSuchMethod(
        Invocation.getter(#table),
        returnValue: _FakeClientModels_4(
          this,
          Invocation.getter(#table),
        ),
        returnValueForMissingStub: _FakeClientModels_4(
          this,
          Invocation.getter(#table),
        ),
      ) as _i7.ClientModels);
  @override
  _i8.DriftDb get attachedDatabase => (super.noSuchMethod(
        Invocation.getter(#attachedDatabase),
        returnValue: _FakeDriftDb_5(
          this,
          Invocation.getter(#attachedDatabase),
        ),
        returnValueForMissingStub: _FakeDriftDb_5(
          this,
          Invocation.getter(#attachedDatabase),
        ),
      ) as _i8.DriftDb);
  @override
  _i9.DatabaseConnection get connection => (super.noSuchMethod(
        Invocation.getter(#connection),
        returnValue: _FakeDatabaseConnection_6(
          this,
          Invocation.getter(#connection),
        ),
        returnValueForMissingStub: _FakeDatabaseConnection_6(
          this,
          Invocation.getter(#connection),
        ),
      ) as _i9.DatabaseConnection);
  @override
  _i9.DriftDatabaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeDriftDatabaseOptions_7(
          this,
          Invocation.getter(#options),
        ),
        returnValueForMissingStub: _FakeDriftDatabaseOptions_7(
          this,
          Invocation.getter(#options),
        ),
      ) as _i9.DriftDatabaseOptions);
  @override
  _i9.QueryExecutor get executor => (super.noSuchMethod(
        Invocation.getter(#executor),
        returnValue: _FakeQueryExecutor_8(
          this,
          Invocation.getter(#executor),
        ),
        returnValueForMissingStub: _FakeQueryExecutor_8(
          this,
          Invocation.getter(#executor),
        ),
      ) as _i9.QueryExecutor);
  @override
  _i10.StreamQueryStore get streamQueries => (super.noSuchMethod(
        Invocation.getter(#streamQueries),
        returnValue: _FakeStreamQueryStore_9(
          this,
          Invocation.getter(#streamQueries),
        ),
        returnValueForMissingStub: _FakeStreamQueryStore_9(
          this,
          Invocation.getter(#streamQueries),
        ),
      ) as _i10.StreamQueryStore);
  @override
  _i9.DatabaseConnectionUser get resolvedEngine => (super.noSuchMethod(
        Invocation.getter(#resolvedEngine),
        returnValue: _FakeDatabaseConnectionUser_10(
          this,
          Invocation.getter(#resolvedEngine),
        ),
        returnValueForMissingStub: _FakeDatabaseConnectionUser_10(
          this,
          Invocation.getter(#resolvedEngine),
        ),
      ) as _i9.DatabaseConnectionUser);
  @override
  _i8.$ClientModelsTable get clientModels => (super.noSuchMethod(
        Invocation.getter(#clientModels),
        returnValue: _Fake$ClientModelsTable_11(
          this,
          Invocation.getter(#clientModels),
        ),
        returnValueForMissingStub: _Fake$ClientModelsTable_11(
          this,
          Invocation.getter(#clientModels),
        ),
      ) as _i8.$ClientModelsTable);
  @override
  _i11.Future<int> insert(_i9.Insertable<_i8.ClientModel>? model) =>
      (super.noSuchMethod(
        Invocation.method(
          #insert,
          [model],
        ),
        returnValue: _i11.Future<int>.value(0),
        returnValueForMissingStub: _i11.Future<int>.value(0),
      ) as _i11.Future<int>);
  @override
  _i11.Future<_i8.ClientModel> getById(_i14.Uid? uid) => (super.noSuchMethod(
        Invocation.method(
          #getById,
          [uid],
        ),
        returnValue: _i11.Future<_i8.ClientModel>.value(_FakeClientModel_12(
          this,
          Invocation.method(
            #getById,
            [uid],
          ),
        )),
        returnValueForMissingStub:
            _i11.Future<_i8.ClientModel>.value(_FakeClientModel_12(
          this,
          Invocation.method(
            #getById,
            [uid],
          ),
        )),
      ) as _i11.Future<_i8.ClientModel>);
  @override
  _i11.Future<Iterable<_i8.ClientModel>> getPage({
    required int? limit,
    required int? offset,
    _i15.SelectFilter<_i7.ClientModels, _i8.ClientModel>? filter,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPage,
          [],
          {
            #limit: limit,
            #offset: offset,
            #filter: filter,
          },
        ),
        returnValue:
            _i11.Future<Iterable<_i8.ClientModel>>.value(<_i8.ClientModel>[]),
        returnValueForMissingStub:
            _i11.Future<Iterable<_i8.ClientModel>>.value(<_i8.ClientModel>[]),
      ) as _i11.Future<Iterable<_i8.ClientModel>>);
  @override
  _i11.Future<bool> save(
    _i14.Uid? uid,
    _i9.Insertable<_i8.ClientModel>? model,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #save,
          [
            uid,
            model,
          ],
        ),
        returnValue: _i11.Future<bool>.value(false),
        returnValueForMissingStub: _i11.Future<bool>.value(false),
      ) as _i11.Future<bool>);
  @override
  _i11.Future<bool> remove(_i14.Uid? uid) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [uid],
        ),
        returnValue: _i11.Future<bool>.value(false),
        returnValueForMissingStub: _i11.Future<bool>.value(false),
      ) as _i11.Future<bool>);
  @override
  _i11.Stream<List<Map<String, Object?>>> createStream(
          _i10.QueryStreamFetcher? stmt) =>
      (super.noSuchMethod(
        Invocation.method(
          #createStream,
          [stmt],
        ),
        returnValue: _i11.Stream<List<Map<String, Object?>>>.empty(),
        returnValueForMissingStub:
            _i11.Stream<List<Map<String, Object?>>>.empty(),
      ) as _i11.Stream<List<Map<String, Object?>>>);
  @override
  T alias<T extends _i9.Table, D>(
    _i9.TableInfo<T, D>? table,
    String? alias,
  ) =>
      throw UnsupportedError(
          '\'alias\' cannot be used without a mockito fallback generator.');
  @override
  void markTablesUpdated(Iterable<_i9.TableInfo<_i9.Table, dynamic>>? tables) =>
      super.noSuchMethod(
        Invocation.method(
          #markTablesUpdated,
          [tables],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyUpdates(Set<_i9.TableUpdate>? updates) => super.noSuchMethod(
        Invocation.method(
          #notifyUpdates,
          [updates],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i11.Stream<Set<_i9.TableUpdate>> tableUpdates(
          [_i9.TableUpdateQuery? query = const _i9.TableUpdateQuery.any()]) =>
      (super.noSuchMethod(
        Invocation.method(
          #tableUpdates,
          [query],
        ),
        returnValue: _i11.Stream<Set<_i9.TableUpdate>>.empty(),
        returnValueForMissingStub: _i11.Stream<Set<_i9.TableUpdate>>.empty(),
      ) as _i11.Stream<Set<_i9.TableUpdate>>);
  @override
  _i11.Future<T> doWhenOpened<T>(
          _i11.FutureOr<T> Function(_i9.QueryExecutor)? fn) =>
      (super.noSuchMethod(
        Invocation.method(
          #doWhenOpened,
          [fn],
        ),
        returnValue: _i11.Future<T>.value(null),
        returnValueForMissingStub: _i11.Future<T>.value(null),
      ) as _i11.Future<T>);
  @override
  _i9.InsertStatement<T, D> into<T extends _i9.Table, D>(
          _i9.TableInfo<T, D>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #into,
          [table],
        ),
        returnValue: _FakeInsertStatement_13<T, D>(
          this,
          Invocation.method(
            #into,
            [table],
          ),
        ),
        returnValueForMissingStub: _FakeInsertStatement_13<T, D>(
          this,
          Invocation.method(
            #into,
            [table],
          ),
        ),
      ) as _i9.InsertStatement<T, D>);
  @override
  _i9.UpdateStatement<Tbl, R> update<Tbl extends _i9.Table, R>(
          _i9.TableInfo<Tbl, R>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [table],
        ),
        returnValue: _FakeUpdateStatement_14<Tbl, R>(
          this,
          Invocation.method(
            #update,
            [table],
          ),
        ),
        returnValueForMissingStub: _FakeUpdateStatement_14<Tbl, R>(
          this,
          Invocation.method(
            #update,
            [table],
          ),
        ),
      ) as _i9.UpdateStatement<Tbl, R>);
  @override
  _i9.SimpleSelectStatement<T, R> select<T extends _i9.HasResultSet, R>(
    _i9.ResultSetImplementation<T, R>? table, {
    bool? distinct = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #select,
          [table],
          {#distinct: distinct},
        ),
        returnValue: _FakeSimpleSelectStatement_15<T, R>(
          this,
          Invocation.method(
            #select,
            [table],
            {#distinct: distinct},
          ),
        ),
        returnValueForMissingStub: _FakeSimpleSelectStatement_15<T, R>(
          this,
          Invocation.method(
            #select,
            [table],
            {#distinct: distinct},
          ),
        ),
      ) as _i9.SimpleSelectStatement<T, R>);
  @override
  _i9.JoinedSelectStatement<T, R> selectOnly<T extends _i9.HasResultSet, R>(
    _i9.ResultSetImplementation<T, R>? table, {
    bool? distinct = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectOnly,
          [table],
          {#distinct: distinct},
        ),
        returnValue: _FakeJoinedSelectStatement_16<T, R>(
          this,
          Invocation.method(
            #selectOnly,
            [table],
            {#distinct: distinct},
          ),
        ),
        returnValueForMissingStub: _FakeJoinedSelectStatement_16<T, R>(
          this,
          Invocation.method(
            #selectOnly,
            [table],
            {#distinct: distinct},
          ),
        ),
      ) as _i9.JoinedSelectStatement<T, R>);
  @override
  _i9.DeleteStatement<T, D> delete<T extends _i9.Table, D>(
          _i9.TableInfo<T, D>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [table],
        ),
        returnValue: _FakeDeleteStatement_17<T, D>(
          this,
          Invocation.method(
            #delete,
            [table],
          ),
        ),
        returnValueForMissingStub: _FakeDeleteStatement_17<T, D>(
          this,
          Invocation.method(
            #delete,
            [table],
          ),
        ),
      ) as _i9.DeleteStatement<T, D>);
  @override
  _i11.Future<int> customUpdate(
    String? query, {
    List<_i9.Variable<Object>>? variables = const [],
    Set<_i9.TableInfo<_i9.Table, dynamic>>? updates,
    _i9.UpdateKind? updateKind,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customUpdate,
          [query],
          {
            #variables: variables,
            #updates: updates,
            #updateKind: updateKind,
          },
        ),
        returnValue: _i11.Future<int>.value(0),
        returnValueForMissingStub: _i11.Future<int>.value(0),
      ) as _i11.Future<int>);
  @override
  _i11.Future<int> customInsert(
    String? query, {
    List<_i9.Variable<Object>>? variables = const [],
    Set<_i9.TableInfo<_i9.Table, dynamic>>? updates,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customInsert,
          [query],
          {
            #variables: variables,
            #updates: updates,
          },
        ),
        returnValue: _i11.Future<int>.value(0),
        returnValueForMissingStub: _i11.Future<int>.value(0),
      ) as _i11.Future<int>);
  @override
  _i11.Future<List<_i9.QueryRow>> customWriteReturning(
    String? query, {
    List<_i9.Variable<Object>>? variables = const [],
    Set<_i9.TableInfo<_i9.Table, dynamic>>? updates,
    _i9.UpdateKind? updateKind,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customWriteReturning,
          [query],
          {
            #variables: variables,
            #updates: updates,
            #updateKind: updateKind,
          },
        ),
        returnValue: _i11.Future<List<_i9.QueryRow>>.value(<_i9.QueryRow>[]),
        returnValueForMissingStub:
            _i11.Future<List<_i9.QueryRow>>.value(<_i9.QueryRow>[]),
      ) as _i11.Future<List<_i9.QueryRow>>);
  @override
  _i9.Selectable<_i9.QueryRow> customSelect(
    String? query, {
    List<_i9.Variable<Object>>? variables = const [],
    Set<_i9.ResultSetImplementation<dynamic, dynamic>>? readsFrom = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customSelect,
          [query],
          {
            #variables: variables,
            #readsFrom: readsFrom,
          },
        ),
        returnValue: _FakeSelectable_18<_i9.QueryRow>(
          this,
          Invocation.method(
            #customSelect,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
        returnValueForMissingStub: _FakeSelectable_18<_i9.QueryRow>(
          this,
          Invocation.method(
            #customSelect,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
      ) as _i9.Selectable<_i9.QueryRow>);
  @override
  _i9.Selectable<_i9.QueryRow> customSelectQuery(
    String? query, {
    List<_i9.Variable<Object>>? variables = const [],
    Set<_i9.ResultSetImplementation<dynamic, dynamic>>? readsFrom = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customSelectQuery,
          [query],
          {
            #variables: variables,
            #readsFrom: readsFrom,
          },
        ),
        returnValue: _FakeSelectable_18<_i9.QueryRow>(
          this,
          Invocation.method(
            #customSelectQuery,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
        returnValueForMissingStub: _FakeSelectable_18<_i9.QueryRow>(
          this,
          Invocation.method(
            #customSelectQuery,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
      ) as _i9.Selectable<_i9.QueryRow>);
  @override
  _i11.Future<void> customStatement(
    String? statement, [
    List<dynamic>? args,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #customStatement,
          [
            statement,
            args,
          ],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  _i11.Future<T> transaction<T>(
    _i11.Future<T> Function()? action, {
    bool? requireNew = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #transaction,
          [action],
          {#requireNew: requireNew},
        ),
        returnValue: _i11.Future<T>.value(null),
        returnValueForMissingStub: _i11.Future<T>.value(null),
      ) as _i11.Future<T>);
  @override
  _i11.Future<void> batch(
          _i11.FutureOr<void> Function(_i9.Batch)? runInBatch) =>
      (super.noSuchMethod(
        Invocation.method(
          #batch,
          [runInBatch],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);
  @override
  _i9.GenerationContext $write(
    _i9.Component? component, {
    bool? hasMultipleTables,
    int? startIndex,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$write,
          [component],
          {
            #hasMultipleTables: hasMultipleTables,
            #startIndex: startIndex,
          },
        ),
        returnValue: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$write,
            [component],
            {
              #hasMultipleTables: hasMultipleTables,
              #startIndex: startIndex,
            },
          ),
        ),
        returnValueForMissingStub: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$write,
            [component],
            {
              #hasMultipleTables: hasMultipleTables,
              #startIndex: startIndex,
            },
          ),
        ),
      ) as _i9.GenerationContext);
  @override
  _i9.GenerationContext $writeInsertable(
    _i9.TableInfo<_i9.Table, dynamic>? table,
    _i9.Insertable<dynamic>? insertable, {
    int? startIndex,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$writeInsertable,
          [
            table,
            insertable,
          ],
          {#startIndex: startIndex},
        ),
        returnValue: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$writeInsertable,
            [
              table,
              insertable,
            ],
            {#startIndex: startIndex},
          ),
        ),
        returnValueForMissingStub: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$writeInsertable,
            [
              table,
              insertable,
            ],
            {#startIndex: startIndex},
          ),
        ),
      ) as _i9.GenerationContext);
  @override
  String $expandVar(
    int? start,
    int? amount,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #$expandVar,
          [
            start,
            amount,
          ],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
}
