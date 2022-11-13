// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'formz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmissionStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Canceled value) canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Canceled value)? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionStatusCopyWith<$Res> {
  factory $SubmissionStatusCopyWith(
          SubmissionStatus value, $Res Function(SubmissionStatus) then) =
      _$SubmissionStatusCopyWithImpl<$Res, SubmissionStatus>;
}

/// @nodoc
class _$SubmissionStatusCopyWithImpl<$Res, $Val extends SubmissionStatus>
    implements $SubmissionStatusCopyWith<$Res> {
  _$SubmissionStatusCopyWithImpl(this._value, this._then);

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
    extends _$SubmissionStatusCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'SubmissionStatus.initial()';
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
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() canceled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? canceled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? canceled,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Canceled value) canceled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SubmissionStatus {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$SubmissionStatusCopyWithImpl<$Res, _$_InProgress>
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
    return 'SubmissionStatus.inProgress()';
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
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() canceled,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? canceled,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? canceled,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Canceled value) canceled,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress extends SubmissionStatus {
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
    extends _$SubmissionStatusCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'SubmissionStatus.success()';
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
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() canceled,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? canceled,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? canceled,
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
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Canceled value) canceled,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends SubmissionStatus {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SubmissionStatusCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure() : super._();

  @override
  String toString() {
    return 'SubmissionStatus.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() canceled,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? canceled,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Canceled value) canceled,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends SubmissionStatus {
  const factory _Failure() = _$_Failure;
  const _Failure._() : super._();
}

/// @nodoc
abstract class _$$_CanceledCopyWith<$Res> {
  factory _$$_CanceledCopyWith(
          _$_Canceled value, $Res Function(_$_Canceled) then) =
      __$$_CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CanceledCopyWithImpl<$Res>
    extends _$SubmissionStatusCopyWithImpl<$Res, _$_Canceled>
    implements _$$_CanceledCopyWith<$Res> {
  __$$_CanceledCopyWithImpl(
      _$_Canceled _value, $Res Function(_$_Canceled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Canceled extends _Canceled {
  const _$_Canceled() : super._();

  @override
  String toString() {
    return 'SubmissionStatus.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() canceled,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? canceled,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Canceled value) canceled,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Canceled value)? canceled,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Canceled value)? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class _Canceled extends SubmissionStatus {
  const factory _Canceled() = _$_Canceled;
  const _Canceled._() : super._();
}
