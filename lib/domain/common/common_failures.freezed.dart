// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StringFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function() empty,
    required TResult Function(String value) invalidCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function()? empty,
    TResult? Function(String value)? invalidCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function()? empty,
    TResult Function(String value)? invalidCharacter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_EmptyStringFailure value) empty,
    required TResult Function(_InvalidCharacterFailure value) invalidCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaxLengthFailure value)? maxLength,
    TResult? Function(_MinLengthFailure value)? minLength,
    TResult? Function(_EmptyStringFailure value)? empty,
    TResult? Function(_InvalidCharacterFailure value)? invalidCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_EmptyStringFailure value)? empty,
    TResult Function(_InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFailureCopyWith<$Res> {
  factory $StringFailureCopyWith(
          StringFailure value, $Res Function(StringFailure) then) =
      _$StringFailureCopyWithImpl<$Res, StringFailure>;
}

/// @nodoc
class _$StringFailureCopyWithImpl<$Res, $Val extends StringFailure>
    implements $StringFailureCopyWith<$Res> {
  _$StringFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MaxLengthFailureCopyWith<$Res> {
  factory _$$_MaxLengthFailureCopyWith(
          _$_MaxLengthFailure value, $Res Function(_$_MaxLengthFailure) then) =
      __$$_MaxLengthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, int length});
}

/// @nodoc
class __$$_MaxLengthFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$_MaxLengthFailure>
    implements _$$_MaxLengthFailureCopyWith<$Res> {
  __$$_MaxLengthFailureCopyWithImpl(
      _$_MaxLengthFailure _value, $Res Function(_$_MaxLengthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? length = null,
  }) {
    return _then(_$_MaxLengthFailure(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MaxLengthFailure implements _MaxLengthFailure {
  const _$_MaxLengthFailure({required this.value, required this.length});

  @override
  final String value;
  @override
  final int length;

  @override
  String toString() {
    return 'StringFailure.maxLength(value: $value, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaxLengthFailure &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaxLengthFailureCopyWith<_$_MaxLengthFailure> get copyWith =>
      __$$_MaxLengthFailureCopyWithImpl<_$_MaxLengthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function() empty,
    required TResult Function(String value) invalidCharacter,
  }) {
    return maxLength(value, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function()? empty,
    TResult? Function(String value)? invalidCharacter,
  }) {
    return maxLength?.call(value, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function()? empty,
    TResult Function(String value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (maxLength != null) {
      return maxLength(value, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_EmptyStringFailure value) empty,
    required TResult Function(_InvalidCharacterFailure value) invalidCharacter,
  }) {
    return maxLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaxLengthFailure value)? maxLength,
    TResult? Function(_MinLengthFailure value)? minLength,
    TResult? Function(_EmptyStringFailure value)? empty,
    TResult? Function(_InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return maxLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_EmptyStringFailure value)? empty,
    TResult Function(_InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (maxLength != null) {
      return maxLength(this);
    }
    return orElse();
  }
}

abstract class _MaxLengthFailure implements StringFailure {
  const factory _MaxLengthFailure(
      {required final String value,
      required final int length}) = _$_MaxLengthFailure;

  String get value;
  int get length;
  @JsonKey(ignore: true)
  _$$_MaxLengthFailureCopyWith<_$_MaxLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MinLengthFailureCopyWith<$Res> {
  factory _$$_MinLengthFailureCopyWith(
          _$_MinLengthFailure value, $Res Function(_$_MinLengthFailure) then) =
      __$$_MinLengthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, int length});
}

/// @nodoc
class __$$_MinLengthFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$_MinLengthFailure>
    implements _$$_MinLengthFailureCopyWith<$Res> {
  __$$_MinLengthFailureCopyWithImpl(
      _$_MinLengthFailure _value, $Res Function(_$_MinLengthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? length = null,
  }) {
    return _then(_$_MinLengthFailure(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MinLengthFailure implements _MinLengthFailure {
  const _$_MinLengthFailure({required this.value, required this.length});

  @override
  final String value;
  @override
  final int length;

  @override
  String toString() {
    return 'StringFailure.minLength(value: $value, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MinLengthFailure &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MinLengthFailureCopyWith<_$_MinLengthFailure> get copyWith =>
      __$$_MinLengthFailureCopyWithImpl<_$_MinLengthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function() empty,
    required TResult Function(String value) invalidCharacter,
  }) {
    return minLength(value, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function()? empty,
    TResult? Function(String value)? invalidCharacter,
  }) {
    return minLength?.call(value, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function()? empty,
    TResult Function(String value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(value, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_EmptyStringFailure value) empty,
    required TResult Function(_InvalidCharacterFailure value) invalidCharacter,
  }) {
    return minLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaxLengthFailure value)? maxLength,
    TResult? Function(_MinLengthFailure value)? minLength,
    TResult? Function(_EmptyStringFailure value)? empty,
    TResult? Function(_InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return minLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_EmptyStringFailure value)? empty,
    TResult Function(_InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(this);
    }
    return orElse();
  }
}

abstract class _MinLengthFailure implements StringFailure {
  const factory _MinLengthFailure(
      {required final String value,
      required final int length}) = _$_MinLengthFailure;

  String get value;
  int get length;
  @JsonKey(ignore: true)
  _$$_MinLengthFailureCopyWith<_$_MinLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyStringFailureCopyWith<$Res> {
  factory _$$_EmptyStringFailureCopyWith(_$_EmptyStringFailure value,
          $Res Function(_$_EmptyStringFailure) then) =
      __$$_EmptyStringFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyStringFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$_EmptyStringFailure>
    implements _$$_EmptyStringFailureCopyWith<$Res> {
  __$$_EmptyStringFailureCopyWithImpl(
      _$_EmptyStringFailure _value, $Res Function(_$_EmptyStringFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmptyStringFailure implements _EmptyStringFailure {
  const _$_EmptyStringFailure();

  @override
  String toString() {
    return 'StringFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyStringFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function() empty,
    required TResult Function(String value) invalidCharacter,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function()? empty,
    TResult? Function(String value)? invalidCharacter,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function()? empty,
    TResult Function(String value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_EmptyStringFailure value) empty,
    required TResult Function(_InvalidCharacterFailure value) invalidCharacter,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaxLengthFailure value)? maxLength,
    TResult? Function(_MinLengthFailure value)? minLength,
    TResult? Function(_EmptyStringFailure value)? empty,
    TResult? Function(_InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_EmptyStringFailure value)? empty,
    TResult Function(_InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyStringFailure implements StringFailure {
  const factory _EmptyStringFailure() = _$_EmptyStringFailure;
}

/// @nodoc
abstract class _$$_InvalidCharacterFailureCopyWith<$Res> {
  factory _$$_InvalidCharacterFailureCopyWith(_$_InvalidCharacterFailure value,
          $Res Function(_$_InvalidCharacterFailure) then) =
      __$$_InvalidCharacterFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_InvalidCharacterFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$_InvalidCharacterFailure>
    implements _$$_InvalidCharacterFailureCopyWith<$Res> {
  __$$_InvalidCharacterFailureCopyWithImpl(_$_InvalidCharacterFailure _value,
      $Res Function(_$_InvalidCharacterFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_InvalidCharacterFailure(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidCharacterFailure implements _InvalidCharacterFailure {
  const _$_InvalidCharacterFailure({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'StringFailure.invalidCharacter(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidCharacterFailure &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidCharacterFailureCopyWith<_$_InvalidCharacterFailure>
      get copyWith =>
          __$$_InvalidCharacterFailureCopyWithImpl<_$_InvalidCharacterFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function() empty,
    required TResult Function(String value) invalidCharacter,
  }) {
    return invalidCharacter(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function()? empty,
    TResult? Function(String value)? invalidCharacter,
  }) {
    return invalidCharacter?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function()? empty,
    TResult Function(String value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (invalidCharacter != null) {
      return invalidCharacter(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MaxLengthFailure value) maxLength,
    required TResult Function(_MinLengthFailure value) minLength,
    required TResult Function(_EmptyStringFailure value) empty,
    required TResult Function(_InvalidCharacterFailure value) invalidCharacter,
  }) {
    return invalidCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MaxLengthFailure value)? maxLength,
    TResult? Function(_MinLengthFailure value)? minLength,
    TResult? Function(_EmptyStringFailure value)? empty,
    TResult? Function(_InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return invalidCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MaxLengthFailure value)? maxLength,
    TResult Function(_MinLengthFailure value)? minLength,
    TResult Function(_EmptyStringFailure value)? empty,
    TResult Function(_InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (invalidCharacter != null) {
      return invalidCharacter(this);
    }
    return orElse();
  }
}

abstract class _InvalidCharacterFailure implements StringFailure {
  const factory _InvalidCharacterFailure({required final String value}) =
      _$_InvalidCharacterFailure;

  String get value;
  @JsonKey(ignore: true)
  _$$_InvalidCharacterFailureCopyWith<_$_InvalidCharacterFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IdentifierFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidIdentifier value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidIdentifier value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidIdentifier value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierFailureCopyWith<$Res> {
  factory $IdentifierFailureCopyWith(
          IdentifierFailure value, $Res Function(IdentifierFailure) then) =
      _$IdentifierFailureCopyWithImpl<$Res, IdentifierFailure>;
}

/// @nodoc
class _$IdentifierFailureCopyWithImpl<$Res, $Val extends IdentifierFailure>
    implements $IdentifierFailureCopyWith<$Res> {
  _$IdentifierFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InvalidIdentifierCopyWith<$Res> {
  factory _$$_InvalidIdentifierCopyWith(_$_InvalidIdentifier value,
          $Res Function(_$_InvalidIdentifier) then) =
      __$$_InvalidIdentifierCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidIdentifierCopyWithImpl<$Res>
    extends _$IdentifierFailureCopyWithImpl<$Res, _$_InvalidIdentifier>
    implements _$$_InvalidIdentifierCopyWith<$Res> {
  __$$_InvalidIdentifierCopyWithImpl(
      _$_InvalidIdentifier _value, $Res Function(_$_InvalidIdentifier) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidIdentifier implements _InvalidIdentifier {
  const _$_InvalidIdentifier();

  @override
  String toString() {
    return 'IdentifierFailure.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidIdentifier);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalid,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidIdentifier value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidIdentifier value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidIdentifier value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _InvalidIdentifier implements IdentifierFailure {
  const factory _InvalidIdentifier() = _$_InvalidIdentifier;
}

/// @nodoc
mixin _$RangeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startIsAfterEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startIsAfterEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startIsAfterEnd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartIsAfterEnd value) startIsAfterEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartIsAfterEnd value)? startIsAfterEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartIsAfterEnd value)? startIsAfterEnd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeFailureCopyWith<$Res> {
  factory $RangeFailureCopyWith(
          RangeFailure value, $Res Function(RangeFailure) then) =
      _$RangeFailureCopyWithImpl<$Res, RangeFailure>;
}

/// @nodoc
class _$RangeFailureCopyWithImpl<$Res, $Val extends RangeFailure>
    implements $RangeFailureCopyWith<$Res> {
  _$RangeFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartIsAfterEndCopyWith<$Res> {
  factory _$$_StartIsAfterEndCopyWith(
          _$_StartIsAfterEnd value, $Res Function(_$_StartIsAfterEnd) then) =
      __$$_StartIsAfterEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartIsAfterEndCopyWithImpl<$Res>
    extends _$RangeFailureCopyWithImpl<$Res, _$_StartIsAfterEnd>
    implements _$$_StartIsAfterEndCopyWith<$Res> {
  __$$_StartIsAfterEndCopyWithImpl(
      _$_StartIsAfterEnd _value, $Res Function(_$_StartIsAfterEnd) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartIsAfterEnd implements _StartIsAfterEnd {
  const _$_StartIsAfterEnd();

  @override
  String toString() {
    return 'RangeFailure.startIsAfterEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartIsAfterEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startIsAfterEnd,
  }) {
    return startIsAfterEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startIsAfterEnd,
  }) {
    return startIsAfterEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startIsAfterEnd,
    required TResult orElse(),
  }) {
    if (startIsAfterEnd != null) {
      return startIsAfterEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartIsAfterEnd value) startIsAfterEnd,
  }) {
    return startIsAfterEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartIsAfterEnd value)? startIsAfterEnd,
  }) {
    return startIsAfterEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartIsAfterEnd value)? startIsAfterEnd,
    required TResult orElse(),
  }) {
    if (startIsAfterEnd != null) {
      return startIsAfterEnd(this);
    }
    return orElse();
  }
}

abstract class _StartIsAfterEnd implements RangeFailure {
  const factory _StartIsAfterEnd() = _$_StartIsAfterEnd;
}
