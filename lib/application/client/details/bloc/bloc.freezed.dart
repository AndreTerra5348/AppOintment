// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<Client> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<Client> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<Client> state)? loadEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmited value) loadEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited value)? loadEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited value)? loadEmited,
    TResult Function(_EditEmited value)? editEmited,
    TResult Function(_DeleteEmited value)? deleteEmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsEventCopyWith<$Res> {
  factory $ClientDetailsEventCopyWith(
          ClientDetailsEvent value, $Res Function(ClientDetailsEvent) then) =
      _$ClientDetailsEventCopyWithImpl<$Res, ClientDetailsEvent>;
}

/// @nodoc
class _$ClientDetailsEventCopyWithImpl<$Res, $Val extends ClientDetailsEvent>
    implements $ClientDetailsEventCopyWith<$Res> {
  _$ClientDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadEmitedCopyWith<$Res> {
  factory _$$_LoadEmitedCopyWith(
          _$_LoadEmited value, $Res Function(_$_LoadEmited) then) =
      __$$_LoadEmitedCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadState<Client> state});

  $LoadStateCopyWith<Client, $Res> get state;
}

/// @nodoc
class __$$_LoadEmitedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_LoadEmited>
    implements _$$_LoadEmitedCopyWith<$Res> {
  __$$_LoadEmitedCopyWithImpl(
      _$_LoadEmited _value, $Res Function(_$_LoadEmited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_LoadEmited(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoadState<Client>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadStateCopyWith<Client, $Res> get state {
    return $LoadStateCopyWith<Client, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_LoadEmited implements _LoadEmited {
  const _$_LoadEmited({required this.state});

  @override
  final LoadState<Client> state;

  @override
  String toString() {
    return 'ClientDetailsEvent.loadEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEmited &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadEmitedCopyWith<_$_LoadEmited> get copyWith =>
      __$$_LoadEmitedCopyWithImpl<_$_LoadEmited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<Client> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return loadEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<Client> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return loadEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<Client> state)? loadEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) {
    if (loadEmited != null) {
      return loadEmited(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmited value) loadEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) {
    return loadEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited value)? loadEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) {
    return loadEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited value)? loadEmited,
    TResult Function(_EditEmited value)? editEmited,
    TResult Function(_DeleteEmited value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (loadEmited != null) {
      return loadEmited(this);
    }
    return orElse();
  }
}

abstract class _LoadEmited implements ClientDetailsEvent {
  const factory _LoadEmited({required final LoadState<Client> state}) =
      _$_LoadEmited;

  LoadState<Client> get state;
  @JsonKey(ignore: true)
  _$$_LoadEmitedCopyWith<_$_LoadEmited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditEmitedCopyWith<$Res> {
  factory _$$_EditEmitedCopyWith(
          _$_EditEmited value, $Res Function(_$_EditEmited) then) =
      __$$_EditEmitedCopyWithImpl<$Res>;
  @useResult
  $Res call({EditState state});

  $EditStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EditEmitedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_EditEmited>
    implements _$$_EditEmitedCopyWith<$Res> {
  __$$_EditEmitedCopyWithImpl(
      _$_EditEmited _value, $Res Function(_$_EditEmited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_EditEmited(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as EditState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditStateCopyWith<$Res> get state {
    return $EditStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EditEmited implements _EditEmited {
  const _$_EditEmited({required this.state});

  @override
  final EditState state;

  @override
  String toString() {
    return 'ClientDetailsEvent.editEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditEmited &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditEmitedCopyWith<_$_EditEmited> get copyWith =>
      __$$_EditEmitedCopyWithImpl<_$_EditEmited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<Client> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return editEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<Client> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return editEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<Client> state)? loadEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) {
    if (editEmited != null) {
      return editEmited(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmited value) loadEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) {
    return editEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited value)? loadEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) {
    return editEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited value)? loadEmited,
    TResult Function(_EditEmited value)? editEmited,
    TResult Function(_DeleteEmited value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (editEmited != null) {
      return editEmited(this);
    }
    return orElse();
  }
}

abstract class _EditEmited implements ClientDetailsEvent {
  const factory _EditEmited({required final EditState state}) = _$_EditEmited;

  EditState get state;
  @JsonKey(ignore: true)
  _$$_EditEmitedCopyWith<_$_EditEmited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteEmitedCopyWith<$Res> {
  factory _$$_DeleteEmitedCopyWith(
          _$_DeleteEmited value, $Res Function(_$_DeleteEmited) then) =
      __$$_DeleteEmitedCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteState state});

  $DeleteStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_DeleteEmitedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_DeleteEmited>
    implements _$$_DeleteEmitedCopyWith<$Res> {
  __$$_DeleteEmitedCopyWithImpl(
      _$_DeleteEmited _value, $Res Function(_$_DeleteEmited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_DeleteEmited(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeleteState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteStateCopyWith<$Res> get state {
    return $DeleteStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_DeleteEmited implements _DeleteEmited {
  const _$_DeleteEmited({required this.state});

  @override
  final DeleteState state;

  @override
  String toString() {
    return 'ClientDetailsEvent.deleteEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEmited &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEmitedCopyWith<_$_DeleteEmited> get copyWith =>
      __$$_DeleteEmitedCopyWithImpl<_$_DeleteEmited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<Client> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return deleteEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<Client> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return deleteEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<Client> state)? loadEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) {
    if (deleteEmited != null) {
      return deleteEmited(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmited value) loadEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) {
    return deleteEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited value)? loadEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) {
    return deleteEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited value)? loadEmited,
    TResult Function(_EditEmited value)? editEmited,
    TResult Function(_DeleteEmited value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (deleteEmited != null) {
      return deleteEmited(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmited implements ClientDetailsEvent {
  const factory _DeleteEmited({required final DeleteState state}) =
      _$_DeleteEmited;

  DeleteState get state;
  @JsonKey(ignore: true)
  _$$_DeleteEmitedCopyWith<_$_DeleteEmited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<Client> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<Client> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<Client> state)? load,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsStateCopyWith<$Res> {
  factory $ClientDetailsStateCopyWith(
          ClientDetailsState value, $Res Function(ClientDetailsState) then) =
      _$ClientDetailsStateCopyWithImpl<$Res, ClientDetailsState>;
}

/// @nodoc
class _$ClientDetailsStateCopyWithImpl<$Res, $Val extends ClientDetailsState>
    implements $ClientDetailsStateCopyWith<$Res> {
  _$ClientDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ClientDetailsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ClientDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<Client> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<Client> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<Client> state)? load,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ClientDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadState<Client> state});

  $LoadStateCopyWith<Client, $Res> get state;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$ClientDetailsStateCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Load(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoadState<Client>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadStateCopyWith<Client, $Res> get state {
    return $LoadStateCopyWith<Client, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.state});

  @override
  final LoadState<Client> state;

  @override
  String toString() {
    return 'ClientDetailsState.load(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<Client> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return load(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<Client> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return load?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<Client> state)? load,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ClientDetailsState {
  const factory _Load({required final LoadState<Client> state}) = _$_Load;

  LoadState<Client> get state;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCopyWith<$Res> {
  factory _$$_EditCopyWith(_$_Edit value, $Res Function(_$_Edit) then) =
      __$$_EditCopyWithImpl<$Res>;
  @useResult
  $Res call({EditState state});

  $EditStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EditCopyWithImpl<$Res>
    extends _$ClientDetailsStateCopyWithImpl<$Res, _$_Edit>
    implements _$$_EditCopyWith<$Res> {
  __$$_EditCopyWithImpl(_$_Edit _value, $Res Function(_$_Edit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Edit(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as EditState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditStateCopyWith<$Res> get state {
    return $EditStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Edit implements _Edit {
  const _$_Edit({required this.state});

  @override
  final EditState state;

  @override
  String toString() {
    return 'ClientDetailsState.edit(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Edit &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCopyWith<_$_Edit> get copyWith =>
      __$$_EditCopyWithImpl<_$_Edit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<Client> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return edit(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<Client> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return edit?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<Client> state)? load,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements ClientDetailsState {
  const factory _Edit({required final EditState state}) = _$_Edit;

  EditState get state;
  @JsonKey(ignore: true)
  _$$_EditCopyWith<_$_Edit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteState state});

  $DeleteStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$ClientDetailsStateCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Delete(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DeleteState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteStateCopyWith<$Res> get state {
    return $DeleteStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete({required this.state});

  @override
  final DeleteState state;

  @override
  String toString() {
    return 'ClientDetailsState.delete(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<Client> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return delete(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<Client> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return delete?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<Client> state)? load,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Load value)? load,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ClientDetailsState {
  const factory _Delete({required final DeleteState state}) = _$_Delete;

  DeleteState get state;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}
