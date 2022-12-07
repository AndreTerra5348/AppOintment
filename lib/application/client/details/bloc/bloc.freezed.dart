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
    required TResult Function(DetailsState<Client> state) detailsEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailsState<Client> state)? detailsEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsState<Client> state)? detailsEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsEmited value) detailsEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsEmited value)? detailsEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsEmited value)? detailsEmited,
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
abstract class _$$_DetailsEmitedCopyWith<$Res> {
  factory _$$_DetailsEmitedCopyWith(
          _$_DetailsEmited value, $Res Function(_$_DetailsEmited) then) =
      __$$_DetailsEmitedCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailsState<Client> state});

  $DetailsStateCopyWith<Client, $Res> get state;
}

/// @nodoc
class __$$_DetailsEmitedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_DetailsEmited>
    implements _$$_DetailsEmitedCopyWith<$Res> {
  __$$_DetailsEmitedCopyWithImpl(
      _$_DetailsEmited _value, $Res Function(_$_DetailsEmited) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_DetailsEmited(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DetailsState<Client>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsStateCopyWith<Client, $Res> get state {
    return $DetailsStateCopyWith<Client, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_DetailsEmited implements _DetailsEmited {
  const _$_DetailsEmited({required this.state});

  @override
  final DetailsState<Client> state;

  @override
  String toString() {
    return 'ClientDetailsEvent.detailsEmited(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsEmited &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsEmitedCopyWith<_$_DetailsEmited> get copyWith =>
      __$$_DetailsEmitedCopyWithImpl<_$_DetailsEmited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsState<Client> state) detailsEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return detailsEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailsState<Client> state)? detailsEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return detailsEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsState<Client> state)? detailsEmited,
    TResult Function(EditState state)? editEmited,
    TResult Function(DeleteState state)? deleteEmited,
    required TResult orElse(),
  }) {
    if (detailsEmited != null) {
      return detailsEmited(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsEmited value) detailsEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) {
    return detailsEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsEmited value)? detailsEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) {
    return detailsEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsEmited value)? detailsEmited,
    TResult Function(_EditEmited value)? editEmited,
    TResult Function(_DeleteEmited value)? deleteEmited,
    required TResult orElse(),
  }) {
    if (detailsEmited != null) {
      return detailsEmited(this);
    }
    return orElse();
  }
}

abstract class _DetailsEmited implements ClientDetailsEvent {
  const factory _DetailsEmited({required final DetailsState<Client> state}) =
      _$_DetailsEmited;

  DetailsState<Client> get state;
  @JsonKey(ignore: true)
  _$$_DetailsEmitedCopyWith<_$_DetailsEmited> get copyWith =>
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
    required TResult Function(DetailsState<Client> state) detailsEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return editEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailsState<Client> state)? detailsEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return editEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsState<Client> state)? detailsEmited,
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
    required TResult Function(_DetailsEmited value) detailsEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) {
    return editEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsEmited value)? detailsEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) {
    return editEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsEmited value)? detailsEmited,
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
    required TResult Function(DetailsState<Client> state) detailsEmited,
    required TResult Function(EditState state) editEmited,
    required TResult Function(DeleteState state) deleteEmited,
  }) {
    return deleteEmited(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailsState<Client> state)? detailsEmited,
    TResult? Function(EditState state)? editEmited,
    TResult? Function(DeleteState state)? deleteEmited,
  }) {
    return deleteEmited?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsState<Client> state)? detailsEmited,
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
    required TResult Function(_DetailsEmited value) detailsEmited,
    required TResult Function(_EditEmited value) editEmited,
    required TResult Function(_DeleteEmited value) deleteEmited,
  }) {
    return deleteEmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsEmited value)? detailsEmited,
    TResult? Function(_EditEmited value)? editEmited,
    TResult? Function(_DeleteEmited value)? deleteEmited,
  }) {
    return deleteEmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsEmited value)? detailsEmited,
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
    required TResult Function(DetailsState<Client> state) details,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailsState<Client> state)? details,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailsState<Client> state)? details,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Details value) details,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Details value)? details,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Details value)? details,
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
    required TResult Function(DetailsState<Client> state) details,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailsState<Client> state)? details,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailsState<Client> state)? details,
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
    required TResult Function(_Details value) details,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Details value)? details,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Details value)? details,
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
abstract class _$$_DetailsCopyWith<$Res> {
  factory _$$_DetailsCopyWith(
          _$_Details value, $Res Function(_$_Details) then) =
      __$$_DetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailsState<Client> state});

  $DetailsStateCopyWith<Client, $Res> get state;
}

/// @nodoc
class __$$_DetailsCopyWithImpl<$Res>
    extends _$ClientDetailsStateCopyWithImpl<$Res, _$_Details>
    implements _$$_DetailsCopyWith<$Res> {
  __$$_DetailsCopyWithImpl(_$_Details _value, $Res Function(_$_Details) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Details(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DetailsState<Client>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsStateCopyWith<Client, $Res> get state {
    return $DetailsStateCopyWith<Client, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Details implements _Details {
  const _$_Details({required this.state});

  @override
  final DetailsState<Client> state;

  @override
  String toString() {
    return 'ClientDetailsState.details(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Details &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      __$$_DetailsCopyWithImpl<_$_Details>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DetailsState<Client> state) details,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return details(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailsState<Client> state)? details,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return details?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailsState<Client> state)? details,
    TResult Function(EditState state)? edit,
    TResult Function(DeleteState state)? delete,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Details value) details,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Details value)? details,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Details value)? details,
    TResult Function(_Edit value)? edit,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class _Details implements ClientDetailsState {
  const factory _Details({required final DetailsState<Client> state}) =
      _$_Details;

  DetailsState<Client> get state;
  @JsonKey(ignore: true)
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(DetailsState<Client> state) details,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return edit(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailsState<Client> state)? details,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return edit?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailsState<Client> state)? details,
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
    required TResult Function(_Details value) details,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Details value)? details,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Details value)? details,
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
    required TResult Function(DetailsState<Client> state) details,
    required TResult Function(EditState state) edit,
    required TResult Function(DeleteState state) delete,
  }) {
    return delete(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailsState<Client> state)? details,
    TResult? Function(EditState state)? edit,
    TResult? Function(DeleteState state)? delete,
  }) {
    return delete?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailsState<Client> state)? details,
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
    required TResult Function(_Details value) details,
    required TResult Function(_Edit value) edit,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Details value)? details,
    TResult? Function(_Edit value)? edit,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Details value)? details,
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
