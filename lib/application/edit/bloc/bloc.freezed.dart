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
mixin _$EditEvent<T extends EntityMixin> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editPressed,
    required TResult Function(T entity) savePressed,
    required TResult Function() cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editPressed,
    TResult? Function(T entity)? savePressed,
    TResult? Function()? cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editPressed,
    TResult Function(T entity)? savePressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed<T> value) editPressed,
    required TResult Function(_SavePressed<T> value) savePressed,
    required TResult Function(_CancelPressed<T> value) cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed<T> value)? editPressed,
    TResult? Function(_SavePressed<T> value)? savePressed,
    TResult? Function(_CancelPressed<T> value)? cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed<T> value)? editPressed,
    TResult Function(_SavePressed<T> value)? savePressed,
    TResult Function(_CancelPressed<T> value)? cancelPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEventCopyWith<T extends EntityMixin, $Res> {
  factory $EditEventCopyWith(
          EditEvent<T> value, $Res Function(EditEvent<T>) then) =
      _$EditEventCopyWithImpl<T, $Res, EditEvent<T>>;
}

/// @nodoc
class _$EditEventCopyWithImpl<T extends EntityMixin, $Res,
    $Val extends EditEvent<T>> implements $EditEventCopyWith<T, $Res> {
  _$EditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EditPressedCopyWith<T extends EntityMixin, $Res> {
  factory _$$_EditPressedCopyWith(
          _$_EditPressed<T> value, $Res Function(_$_EditPressed<T>) then) =
      __$$_EditPressedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_EditPressedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$EditEventCopyWithImpl<T, $Res, _$_EditPressed<T>>
    implements _$$_EditPressedCopyWith<T, $Res> {
  __$$_EditPressedCopyWithImpl(
      _$_EditPressed<T> _value, $Res Function(_$_EditPressed<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditPressed<T extends EntityMixin> implements _EditPressed<T> {
  const _$_EditPressed();

  @override
  String toString() {
    return 'EditEvent<$T>.editPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EditPressed<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editPressed,
    required TResult Function(T entity) savePressed,
    required TResult Function() cancelPressed,
  }) {
    return editPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editPressed,
    TResult? Function(T entity)? savePressed,
    TResult? Function()? cancelPressed,
  }) {
    return editPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editPressed,
    TResult Function(T entity)? savePressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed<T> value) editPressed,
    required TResult Function(_SavePressed<T> value) savePressed,
    required TResult Function(_CancelPressed<T> value) cancelPressed,
  }) {
    return editPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed<T> value)? editPressed,
    TResult? Function(_SavePressed<T> value)? savePressed,
    TResult? Function(_CancelPressed<T> value)? cancelPressed,
  }) {
    return editPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed<T> value)? editPressed,
    TResult Function(_SavePressed<T> value)? savePressed,
    TResult Function(_CancelPressed<T> value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed(this);
    }
    return orElse();
  }
}

abstract class _EditPressed<T extends EntityMixin> implements EditEvent<T> {
  const factory _EditPressed() = _$_EditPressed<T>;
}

/// @nodoc
abstract class _$$_SavePressedCopyWith<T extends EntityMixin, $Res> {
  factory _$$_SavePressedCopyWith(
          _$_SavePressed<T> value, $Res Function(_$_SavePressed<T>) then) =
      __$$_SavePressedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T entity});
}

/// @nodoc
class __$$_SavePressedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$EditEventCopyWithImpl<T, $Res, _$_SavePressed<T>>
    implements _$$_SavePressedCopyWith<T, $Res> {
  __$$_SavePressedCopyWithImpl(
      _$_SavePressed<T> _value, $Res Function(_$_SavePressed<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$_SavePressed<T>(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_SavePressed<T extends EntityMixin> implements _SavePressed<T> {
  const _$_SavePressed({required this.entity});

  @override
  final T entity;

  @override
  String toString() {
    return 'EditEvent<$T>.savePressed(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavePressed<T> &&
            const DeepCollectionEquality().equals(other.entity, entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavePressedCopyWith<T, _$_SavePressed<T>> get copyWith =>
      __$$_SavePressedCopyWithImpl<T, _$_SavePressed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editPressed,
    required TResult Function(T entity) savePressed,
    required TResult Function() cancelPressed,
  }) {
    return savePressed(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editPressed,
    TResult? Function(T entity)? savePressed,
    TResult? Function()? cancelPressed,
  }) {
    return savePressed?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editPressed,
    TResult Function(T entity)? savePressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (savePressed != null) {
      return savePressed(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed<T> value) editPressed,
    required TResult Function(_SavePressed<T> value) savePressed,
    required TResult Function(_CancelPressed<T> value) cancelPressed,
  }) {
    return savePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed<T> value)? editPressed,
    TResult? Function(_SavePressed<T> value)? savePressed,
    TResult? Function(_CancelPressed<T> value)? cancelPressed,
  }) {
    return savePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed<T> value)? editPressed,
    TResult Function(_SavePressed<T> value)? savePressed,
    TResult Function(_CancelPressed<T> value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (savePressed != null) {
      return savePressed(this);
    }
    return orElse();
  }
}

abstract class _SavePressed<T extends EntityMixin> implements EditEvent<T> {
  const factory _SavePressed({required final T entity}) = _$_SavePressed<T>;

  T get entity;
  @JsonKey(ignore: true)
  _$$_SavePressedCopyWith<T, _$_SavePressed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelPressedCopyWith<T extends EntityMixin, $Res> {
  factory _$$_CancelPressedCopyWith(
          _$_CancelPressed<T> value, $Res Function(_$_CancelPressed<T>) then) =
      __$$_CancelPressedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_CancelPressedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$EditEventCopyWithImpl<T, $Res, _$_CancelPressed<T>>
    implements _$$_CancelPressedCopyWith<T, $Res> {
  __$$_CancelPressedCopyWithImpl(
      _$_CancelPressed<T> _value, $Res Function(_$_CancelPressed<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelPressed<T extends EntityMixin> implements _CancelPressed<T> {
  const _$_CancelPressed();

  @override
  String toString() {
    return 'EditEvent<$T>.cancelPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelPressed<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editPressed,
    required TResult Function(T entity) savePressed,
    required TResult Function() cancelPressed,
  }) {
    return cancelPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editPressed,
    TResult? Function(T entity)? savePressed,
    TResult? Function()? cancelPressed,
  }) {
    return cancelPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editPressed,
    TResult Function(T entity)? savePressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed<T> value) editPressed,
    required TResult Function(_SavePressed<T> value) savePressed,
    required TResult Function(_CancelPressed<T> value) cancelPressed,
  }) {
    return cancelPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed<T> value)? editPressed,
    TResult? Function(_SavePressed<T> value)? savePressed,
    TResult? Function(_CancelPressed<T> value)? cancelPressed,
  }) {
    return cancelPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed<T> value)? editPressed,
    TResult Function(_SavePressed<T> value)? savePressed,
    TResult Function(_CancelPressed<T> value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed(this);
    }
    return orElse();
  }
}

abstract class _CancelPressed<T extends EntityMixin> implements EditEvent<T> {
  const factory _CancelPressed() = _$_CancelPressed<T>;
}

/// @nodoc
mixin _$EditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(SubmissionFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(SubmissionFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(SubmissionFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStateCopyWith<$Res> {
  factory $EditStateCopyWith(EditState value, $Res Function(EditState) then) =
      _$EditStateCopyWithImpl<$Res, EditState>;
}

/// @nodoc
class _$EditStateCopyWithImpl<$Res, $Val extends EditState>
    implements $EditStateCopyWith<$Res> {
  _$EditStateCopyWithImpl(this._value, this._then);

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
    extends _$EditStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'EditState.initial()';
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
    required TResult Function() editing,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(SubmissionFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(SubmissionFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(SubmissionFailure failure)? failure,
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
    required TResult Function(_Editing value) editing,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends EditState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_EditingCopyWith<$Res> {
  factory _$$_EditingCopyWith(
          _$_Editing value, $Res Function(_$_Editing) then) =
      __$$_EditingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditingCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$_Editing>
    implements _$$_EditingCopyWith<$Res> {
  __$$_EditingCopyWithImpl(_$_Editing _value, $Res Function(_$_Editing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Editing extends _Editing {
  const _$_Editing() : super._();

  @override
  String toString() {
    return 'EditState.editing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Editing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(SubmissionFailure failure) failure,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(SubmissionFailure failure)? failure,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(SubmissionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing extends EditState {
  const factory _Editing() = _$_Editing;
  const _Editing._() : super._();
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress extends _InProgress {
  const _$_InProgress() : super._();

  @override
  String toString() {
    return 'EditState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(SubmissionFailure failure) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(SubmissionFailure failure)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(SubmissionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress extends EditState {
  const factory _InProgress() = _$_InProgress;
  const _InProgress._() : super._();
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'EditState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(SubmissionFailure failure) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(SubmissionFailure failure)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(SubmissionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends EditState {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SubmissionFailure failure});

  $SubmissionFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$EditStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SubmissionFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionFailureCopyWith<$Res> get failure {
    return $SubmissionFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure({required this.failure}) : super._();

  @override
  final SubmissionFailure failure;

  @override
  String toString() {
    return 'EditState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function(SubmissionFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function(SubmissionFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function(SubmissionFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends EditState {
  const factory _Failure({required final SubmissionFailure failure}) =
      _$_Failure;
  const _Failure._() : super._();

  SubmissionFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
