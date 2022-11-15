// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'i_page_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageServiceFailure {
  Object get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) countDbException,
    required TResult Function(Object error) getPageDbException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? countDbException,
    TResult? Function(Object error)? getPageDbException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? countDbException,
    TResult Function(Object error)? getPageDbException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountDbException value) countDbException,
    required TResult Function(_GetPageDbException value) getPageDbException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountDbException value)? countDbException,
    TResult? Function(_GetPageDbException value)? getPageDbException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountDbException value)? countDbException,
    TResult Function(_GetPageDbException value)? getPageDbException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageServiceFailureCopyWith<PageServiceFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageServiceFailureCopyWith<$Res> {
  factory $PageServiceFailureCopyWith(
          PageServiceFailure value, $Res Function(PageServiceFailure) then) =
      _$PageServiceFailureCopyWithImpl<$Res, PageServiceFailure>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$PageServiceFailureCopyWithImpl<$Res, $Val extends PageServiceFailure>
    implements $PageServiceFailureCopyWith<$Res> {
  _$PageServiceFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountDbExceptionCopyWith<$Res>
    implements $PageServiceFailureCopyWith<$Res> {
  factory _$$_CountDbExceptionCopyWith(
          _$_CountDbException value, $Res Function(_$_CountDbException) then) =
      __$$_CountDbExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_CountDbExceptionCopyWithImpl<$Res>
    extends _$PageServiceFailureCopyWithImpl<$Res, _$_CountDbException>
    implements _$$_CountDbExceptionCopyWith<$Res> {
  __$$_CountDbExceptionCopyWithImpl(
      _$_CountDbException _value, $Res Function(_$_CountDbException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_CountDbException(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CountDbException implements _CountDbException {
  const _$_CountDbException({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'PageServiceFailure.countDbException(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountDbException &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountDbExceptionCopyWith<_$_CountDbException> get copyWith =>
      __$$_CountDbExceptionCopyWithImpl<_$_CountDbException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) countDbException,
    required TResult Function(Object error) getPageDbException,
  }) {
    return countDbException(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? countDbException,
    TResult? Function(Object error)? getPageDbException,
  }) {
    return countDbException?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? countDbException,
    TResult Function(Object error)? getPageDbException,
    required TResult orElse(),
  }) {
    if (countDbException != null) {
      return countDbException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountDbException value) countDbException,
    required TResult Function(_GetPageDbException value) getPageDbException,
  }) {
    return countDbException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountDbException value)? countDbException,
    TResult? Function(_GetPageDbException value)? getPageDbException,
  }) {
    return countDbException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountDbException value)? countDbException,
    TResult Function(_GetPageDbException value)? getPageDbException,
    required TResult orElse(),
  }) {
    if (countDbException != null) {
      return countDbException(this);
    }
    return orElse();
  }
}

abstract class _CountDbException implements PageServiceFailure {
  const factory _CountDbException({required final Object error}) =
      _$_CountDbException;

  @override
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$_CountDbExceptionCopyWith<_$_CountDbException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPageDbExceptionCopyWith<$Res>
    implements $PageServiceFailureCopyWith<$Res> {
  factory _$$_GetPageDbExceptionCopyWith(_$_GetPageDbException value,
          $Res Function(_$_GetPageDbException) then) =
      __$$_GetPageDbExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_GetPageDbExceptionCopyWithImpl<$Res>
    extends _$PageServiceFailureCopyWithImpl<$Res, _$_GetPageDbException>
    implements _$$_GetPageDbExceptionCopyWith<$Res> {
  __$$_GetPageDbExceptionCopyWithImpl(
      _$_GetPageDbException _value, $Res Function(_$_GetPageDbException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_GetPageDbException(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_GetPageDbException implements _GetPageDbException {
  const _$_GetPageDbException({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'PageServiceFailure.getPageDbException(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPageDbException &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPageDbExceptionCopyWith<_$_GetPageDbException> get copyWith =>
      __$$_GetPageDbExceptionCopyWithImpl<_$_GetPageDbException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) countDbException,
    required TResult Function(Object error) getPageDbException,
  }) {
    return getPageDbException(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? countDbException,
    TResult? Function(Object error)? getPageDbException,
  }) {
    return getPageDbException?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? countDbException,
    TResult Function(Object error)? getPageDbException,
    required TResult orElse(),
  }) {
    if (getPageDbException != null) {
      return getPageDbException(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountDbException value) countDbException,
    required TResult Function(_GetPageDbException value) getPageDbException,
  }) {
    return getPageDbException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountDbException value)? countDbException,
    TResult? Function(_GetPageDbException value)? getPageDbException,
  }) {
    return getPageDbException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountDbException value)? countDbException,
    TResult Function(_GetPageDbException value)? getPageDbException,
    required TResult orElse(),
  }) {
    if (getPageDbException != null) {
      return getPageDbException(this);
    }
    return orElse();
  }
}

abstract class _GetPageDbException implements PageServiceFailure {
  const factory _GetPageDbException({required final Object error}) =
      _$_GetPageDbException;

  @override
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$$_GetPageDbExceptionCopyWith<_$_GetPageDbException> get copyWith =>
      throw _privateConstructorUsedError;
}
