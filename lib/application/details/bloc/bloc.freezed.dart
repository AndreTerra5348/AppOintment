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
mixin _$DetailsEvent<T extends EntityMixin> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<T> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<T> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<T> state)? loadEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmited<T> value) loadEmited,
    required TResult Function(_EditEmited<T> value) editEmited,
    required TResult Function(_DeleteEmited<T> value) deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited<T> value)? loadEmited,
    TResult? Function(_EditEmited<T> value)? editEmited,
    TResult? Function(_DeleteEmited<T> value)? deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited<T> value)? loadEmited,
    TResult Function(_EditEmited<T> value)? editEmited,
    TResult Function(_DeleteEmited<T> value)? deleteEmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<T extends EntityMixin, $Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent<T> value, $Res Function(DetailsEvent<T>) then) =
      _$DetailsEventCopyWithImpl<T, $Res, DetailsEvent<T>>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<T extends EntityMixin, $Res,
    $Val extends DetailsEvent<T>> implements $DetailsEventCopyWith<T, $Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadEmitedCopyWith<T extends EntityMixin, $Res> {
  factory _$$_LoadEmitedCopyWith(
          _$_LoadEmited<T> value, $Res Function(_$_LoadEmited<T>) then) =
      __$$_LoadEmitedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({LoadState<T> state});

  $LoadStateCopyWith<T, $Res> get state;
}

/// @nodoc
class __$$_LoadEmitedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsEventCopyWithImpl<T, $Res, _$_LoadEmited<T>>
    implements _$$_LoadEmitedCopyWith<T, $Res> {
  __$$_LoadEmitedCopyWithImpl(
      _$_LoadEmited<T> _value, $Res Function(_$_LoadEmited<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_LoadEmited<T>(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoadState<T>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadStateCopyWith<T, $Res> get state {
    return $LoadStateCopyWith<T, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_LoadEmited<T extends EntityMixin> implements _LoadEmited<T> {
  const _$_LoadEmited({required this.state});

  @override
  final LoadState<T> state;

  @override
  String toString() {
    return 'DetailsEvent<$T>.loadEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEmited<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadEmitedCopyWith<T, _$_LoadEmited<T>> get copyWith =>
      __$$_LoadEmitedCopyWithImpl<T, _$_LoadEmited<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<T> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return loadEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<T> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return loadEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<T> state)? loadEmited,
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
    required TResult Function(_LoadEmited<T> value) loadEmited,
    required TResult Function(_EditEmited<T> value) editEmited,
    required TResult Function(_DeleteEmited<T> value) deleteEmited,
  }) {
    return loadEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited<T> value)? loadEmited,
    TResult? Function(_EditEmited<T> value)? editEmited,
    TResult? Function(_DeleteEmited<T> value)? deleteEmited,
  }) {
    return loadEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited<T> value)? loadEmited,
    TResult Function(_EditEmited<T> value)? editEmited,
    TResult Function(_DeleteEmited<T> value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (loadEmited != null) {
      return loadEmited(this);
    }
    return orElse();
  }
}

abstract class _LoadEmited<T extends EntityMixin> implements DetailsEvent<T> {
  const factory _LoadEmited({required final LoadState<T> state}) =
      _$_LoadEmited<T>;

  LoadState<T> get state;
  @JsonKey(ignore: true)
  _$$_LoadEmitedCopyWith<T, _$_LoadEmited<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditEmitedCopyWith<T extends EntityMixin, $Res> {
  factory _$$_EditEmitedCopyWith(
          _$_EditEmited<T> value, $Res Function(_$_EditEmited<T>) then) =
      __$$_EditEmitedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({EditState state});

  $EditStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EditEmitedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsEventCopyWithImpl<T, $Res, _$_EditEmited<T>>
    implements _$$_EditEmitedCopyWith<T, $Res> {
  __$$_EditEmitedCopyWithImpl(
      _$_EditEmited<T> _value, $Res Function(_$_EditEmited<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_EditEmited<T>(
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

class _$_EditEmited<T extends EntityMixin> implements _EditEmited<T> {
  const _$_EditEmited({required this.state});

  @override
  final EditState state;

  @override
  String toString() {
    return 'DetailsEvent<$T>.editEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditEmited<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditEmitedCopyWith<T, _$_EditEmited<T>> get copyWith =>
      __$$_EditEmitedCopyWithImpl<T, _$_EditEmited<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<T> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return editEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<T> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return editEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<T> state)? loadEmited,
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
    required TResult Function(_LoadEmited<T> value) loadEmited,
    required TResult Function(_EditEmited<T> value) editEmited,
    required TResult Function(_DeleteEmited<T> value) deleteEmited,
  }) {
    return editEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited<T> value)? loadEmited,
    TResult? Function(_EditEmited<T> value)? editEmited,
    TResult? Function(_DeleteEmited<T> value)? deleteEmited,
  }) {
    return editEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited<T> value)? loadEmited,
    TResult Function(_EditEmited<T> value)? editEmited,
    TResult Function(_DeleteEmited<T> value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (editEmited != null) {
      return editEmited(this);
    }
    return orElse();
  }
}

abstract class _EditEmited<T extends EntityMixin> implements DetailsEvent<T> {
  const factory _EditEmited({required final EditState state}) =
      _$_EditEmited<T>;

  EditState get state;
  @JsonKey(ignore: true)
  _$$_EditEmitedCopyWith<T, _$_EditEmited<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteEmitedCopyWith<T extends EntityMixin, $Res> {
  factory _$$_DeleteEmitedCopyWith(
          _$_DeleteEmited<T> value, $Res Function(_$_DeleteEmited<T>) then) =
      __$$_DeleteEmitedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DeleteState state});

  $DeleteStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_DeleteEmitedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsEventCopyWithImpl<T, $Res, _$_DeleteEmited<T>>
    implements _$$_DeleteEmitedCopyWith<T, $Res> {
  __$$_DeleteEmitedCopyWithImpl(
      _$_DeleteEmited<T> _value, $Res Function(_$_DeleteEmited<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_DeleteEmited<T>(
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

class _$_DeleteEmited<T extends EntityMixin> implements _DeleteEmited<T> {
  const _$_DeleteEmited({required this.state});

  @override
  final DeleteState state;

  @override
  String toString() {
    return 'DetailsEvent<$T>.deleteEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEmited<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEmitedCopyWith<T, _$_DeleteEmited<T>> get copyWith =>
      __$$_DeleteEmitedCopyWithImpl<T, _$_DeleteEmited<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadState<T> state) loadEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return deleteEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadState<T> state)? loadEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return deleteEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadState<T> state)? loadEmited,
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
    required TResult Function(_LoadEmited<T> value) loadEmited,
    required TResult Function(_EditEmited<T> value) editEmited,
    required TResult Function(_DeleteEmited<T> value) deleteEmited,
  }) {
    return deleteEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmited<T> value)? loadEmited,
    TResult? Function(_EditEmited<T> value)? editEmited,
    TResult? Function(_DeleteEmited<T> value)? deleteEmited,
  }) {
    return deleteEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmited<T> value)? loadEmited,
    TResult Function(_EditEmited<T> value)? editEmited,
    TResult Function(_DeleteEmited<T> value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (deleteEmited != null) {
      return deleteEmited(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmited<T extends EntityMixin> implements DetailsEvent<T> {
  const factory _DeleteEmited({required final DeleteState state}) =
      _$_DeleteEmited<T>;

  DeleteState get state;
  @JsonKey(ignore: true)
  _$$_DeleteEmitedCopyWith<T, _$_DeleteEmited<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsState<T extends EntityMixin> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<T> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<T> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<T> state)? load,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Load<T> value) load,
    required TResult Function(_Edit<T> value) edit,
    required TResult Function(_Delete<T> value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Load<T> value)? load,
    TResult? Function(_Edit<T> value)? edit,
    TResult? Function(_Delete<T> value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Load<T> value)? load,
    TResult Function(_Edit<T> value)? edit,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<T extends EntityMixin, $Res> {
  factory $DetailsStateCopyWith(
          DetailsState<T> value, $Res Function(DetailsState<T>) then) =
      _$DetailsStateCopyWithImpl<T, $Res, DetailsState<T>>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<T extends EntityMixin, $Res,
    $Val extends DetailsState<T>> implements $DetailsStateCopyWith<T, $Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T extends EntityMixin, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsStateCopyWithImpl<T, $Res, _$_Initial<T>>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<T extends EntityMixin> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'DetailsState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<T> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<T> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<T> state)? load,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Load<T> value) load,
    required TResult Function(_Edit<T> value) edit,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Load<T> value)? load,
    TResult? Function(_Edit<T> value)? edit,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Load<T> value)? load,
    TResult Function(_Edit<T> value)? edit,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T extends EntityMixin> implements DetailsState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$$_LoadCopyWith<T extends EntityMixin, $Res> {
  factory _$$_LoadCopyWith(_$_Load<T> value, $Res Function(_$_Load<T>) then) =
      __$$_LoadCopyWithImpl<T, $Res>;
  @useResult
  $Res call({LoadState<T> state});

  $LoadStateCopyWith<T, $Res> get state;
}

/// @nodoc
class __$$_LoadCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsStateCopyWithImpl<T, $Res, _$_Load<T>>
    implements _$$_LoadCopyWith<T, $Res> {
  __$$_LoadCopyWithImpl(_$_Load<T> _value, $Res Function(_$_Load<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Load<T>(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoadState<T>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadStateCopyWith<T, $Res> get state {
    return $LoadStateCopyWith<T, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Load<T extends EntityMixin> implements _Load<T> {
  const _$_Load({required this.state});

  @override
  final LoadState<T> state;

  @override
  String toString() {
    return 'DetailsState<$T>.load(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCopyWith<T, _$_Load<T>> get copyWith =>
      __$$_LoadCopyWithImpl<T, _$_Load<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<T> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return load(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<T> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return load?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<T> state)? load,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Load<T> value) load,
    required TResult Function(_Edit<T> value) edit,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Load<T> value)? load,
    TResult? Function(_Edit<T> value)? edit,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Load<T> value)? load,
    TResult Function(_Edit<T> value)? edit,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load<T extends EntityMixin> implements DetailsState<T> {
  const factory _Load({required final LoadState<T> state}) = _$_Load<T>;

  LoadState<T> get state;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<T, _$_Load<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCopyWith<T extends EntityMixin, $Res> {
  factory _$$_EditCopyWith(_$_Edit<T> value, $Res Function(_$_Edit<T>) then) =
      __$$_EditCopyWithImpl<T, $Res>;
  @useResult
  $Res call({EditState state});

  $EditStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EditCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsStateCopyWithImpl<T, $Res, _$_Edit<T>>
    implements _$$_EditCopyWith<T, $Res> {
  __$$_EditCopyWithImpl(_$_Edit<T> _value, $Res Function(_$_Edit<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Edit<T>(
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

class _$_Edit<T extends EntityMixin> implements _Edit<T> {
  const _$_Edit({required this.state});

  @override
  final EditState state;

  @override
  String toString() {
    return 'DetailsState<$T>.edit(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Edit<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCopyWith<T, _$_Edit<T>> get copyWith =>
      __$$_EditCopyWithImpl<T, _$_Edit<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<T> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return edit(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<T> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return edit?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<T> state)? load,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Load<T> value) load,
    required TResult Function(_Edit<T> value) edit,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Load<T> value)? load,
    TResult? Function(_Edit<T> value)? edit,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Load<T> value)? load,
    TResult Function(_Edit<T> value)? edit,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit<T extends EntityMixin> implements DetailsState<T> {
  const factory _Edit({required final EditState state}) = _$_Edit<T>;

  EditState get state;
  @JsonKey(ignore: true)
  _$$_EditCopyWith<T, _$_Edit<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<T extends EntityMixin, $Res> {
  factory _$$_DeleteCopyWith(
          _$_Delete<T> value, $Res Function(_$_Delete<T>) then) =
      __$$_DeleteCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DeleteState state});

  $DeleteStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsStateCopyWithImpl<T, $Res, _$_Delete<T>>
    implements _$$_DeleteCopyWith<T, $Res> {
  __$$_DeleteCopyWithImpl(
      _$_Delete<T> _value, $Res Function(_$_Delete<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Delete<T>(
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

class _$_Delete<T extends EntityMixin> implements _Delete<T> {
  const _$_Delete({required this.state});

  @override
  final DeleteState state;

  @override
  String toString() {
    return 'DetailsState<$T>.delete(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<T, _$_Delete<T>> get copyWith =>
      __$$_DeleteCopyWithImpl<T, _$_Delete<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LoadState<T> state) load,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return delete(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LoadState<T> state)? load,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return delete?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LoadState<T> state)? load,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Load<T> value) load,
    required TResult Function(_Edit<T> value) edit,
    required TResult Function(_Delete<T> value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Load<T> value)? load,
    TResult? Function(_Edit<T> value)? edit,
    TResult? Function(_Delete<T> value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Load<T> value)? load,
    TResult Function(_Edit<T> value)? edit,
    TResult Function(_Delete<T> value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete<T extends EntityMixin> implements DetailsState<T> {
  const factory _Delete({required final DeleteState state}) = _$_Delete<T>;

  DeleteState get state;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<T, _$_Delete<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
