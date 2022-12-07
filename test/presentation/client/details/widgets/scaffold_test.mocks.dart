// Mocks generated by Mockito 5.3.2 from annotations
// in appointment/test/presentation/client/details/widgets/scaffold_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:appointment/application/client/bloc/bloc.dart' as _i6;
import 'package:appointment/application/client/details/bloc/bloc.dart' as _i7;
import 'package:appointment/application/delete/bloc/bloc.dart' as _i4;
import 'package:appointment/application/edit/bloc/bloc.dart' as _i5;
import 'package:appointment/application/load/bloc/bloc.dart' as _i3;
import 'package:appointment/domain/common/entity_mixin.dart' as _i1;
import 'package:bloc/bloc.dart' as _i9;
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

class _FakeDeleteState_1 extends _i2.SmartFake implements _i4.DeleteState {
  _FakeDeleteState_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEditState_2 extends _i2.SmartFake implements _i5.EditState {
  _FakeEditState_2(
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

class _FakeDetailsState_4<T extends _i1.EntityMixin> extends _i2.SmartFake
    implements _i7.DetailsState<T> {
  _FakeDetailsState_4(
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
  _i8.Stream<_i3.LoadState<T>> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i3.LoadState<T>>.empty(),
      ) as _i8.Stream<_i3.LoadState<T>>);
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
    _i9.EventHandler<E, _i3.LoadState<T>>? handler, {
    _i9.EventTransformer<E>? transformer,
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
          _i9.Transition<_i3.LoadEvent, _i3.LoadState<T>>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
  @override
  void onChange(_i9.Change<_i3.LoadState<T>>? change) => super.noSuchMethod(
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
    implements _i4.DeleteBloc<T> {
  MockDeleteBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i4.DeleteState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeDeleteState_1(
          this,
          Invocation.getter(#state),
        ),
      ) as _i4.DeleteState);
  @override
  _i8.Stream<_i4.DeleteState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i4.DeleteState>.empty(),
      ) as _i8.Stream<_i4.DeleteState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i4.DeleteEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i4.DeleteEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i4.DeleteState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i4.DeleteEvent>(
    _i9.EventHandler<E, _i4.DeleteState>? handler, {
    _i9.EventTransformer<E>? transformer,
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
          _i9.Transition<_i4.DeleteEvent, _i4.DeleteState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
  @override
  void onChange(_i9.Change<_i4.DeleteState>? change) => super.noSuchMethod(
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
    implements _i5.EditBloc<T> {
  MockEditBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i5.EditState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeEditState_2(
          this,
          Invocation.getter(#state),
        ),
      ) as _i5.EditState);
  @override
  _i8.Stream<_i5.EditState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i5.EditState>.empty(),
      ) as _i8.Stream<_i5.EditState>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i5.EditEvent<T>? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i5.EditEvent<T>? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i5.EditState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i5.EditEvent<T>>(
    _i9.EventHandler<E, _i5.EditState>? handler, {
    _i9.EventTransformer<E>? transformer,
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
          _i9.Transition<_i5.EditEvent<T>, _i5.EditState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
  @override
  void onChange(_i9.Change<_i5.EditState>? change) => super.noSuchMethod(
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
  _i8.Stream<_i6.ClientState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i6.ClientState>.empty(),
      ) as _i8.Stream<_i6.ClientState>);
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
    _i9.EventHandler<E, _i6.ClientState>? handler, {
    _i9.EventTransformer<E>? transformer,
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
          _i9.Transition<_i6.ClientEvent, _i6.ClientState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
  @override
  void onChange(_i9.Change<_i6.ClientState>? change) => super.noSuchMethod(
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

/// A class which mocks [DetailsBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockDetailsBloc<T extends _i1.EntityMixin> extends _i2.Mock
    implements _i7.DetailsBloc<T> {
  MockDetailsBloc() {
    _i2.throwOnMissingStub(this);
  }

  @override
  _i7.DetailsState<T> get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeDetailsState_4<T>(
          this,
          Invocation.getter(#state),
        ),
      ) as _i7.DetailsState<T>);
  @override
  _i8.Stream<_i7.DetailsState<T>> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i8.Stream<_i7.DetailsState<T>>.empty(),
      ) as _i8.Stream<_i7.DetailsState<T>>);
  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);
  @override
  void add(_i7.DetailsEvent<T>? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void onEvent(_i7.DetailsEvent<T>? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void emit(_i7.DetailsState<T>? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void on<E extends _i7.DetailsEvent<T>>(
    _i9.EventHandler<E, _i7.DetailsState<T>>? handler, {
    _i9.EventTransformer<E>? transformer,
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
          _i9.Transition<_i7.DetailsEvent<T>, _i7.DetailsState<T>>?
              transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i8.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
  @override
  void onChange(_i9.Change<_i7.DetailsState<T>>? change) => super.noSuchMethod(
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
