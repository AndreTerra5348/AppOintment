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
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
    required TResult Function(InvalidCharacterFailure value) invalidCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
    TResult? Function(InvalidCharacterFailure value)? invalidCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
    TResult Function(InvalidCharacterFailure value)? invalidCharacter,
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
abstract class _$$MaxLengthFailureCopyWith<$Res> {
  factory _$$MaxLengthFailureCopyWith(
          _$MaxLengthFailure value, $Res Function(_$MaxLengthFailure) then) =
      __$$MaxLengthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, int length});
}

/// @nodoc
class __$$MaxLengthFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$MaxLengthFailure>
    implements _$$MaxLengthFailureCopyWith<$Res> {
  __$$MaxLengthFailureCopyWithImpl(
      _$MaxLengthFailure _value, $Res Function(_$MaxLengthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? length = null,
  }) {
    return _then(_$MaxLengthFailure(
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

class _$MaxLengthFailure implements MaxLengthFailure {
  const _$MaxLengthFailure({required this.value, required this.length});

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
            other is _$MaxLengthFailure &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxLengthFailureCopyWith<_$MaxLengthFailure> get copyWith =>
      __$$MaxLengthFailureCopyWithImpl<_$MaxLengthFailure>(this, _$identity);

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
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
    required TResult Function(InvalidCharacterFailure value) invalidCharacter,
  }) {
    return maxLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
    TResult? Function(InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return maxLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
    TResult Function(InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (maxLength != null) {
      return maxLength(this);
    }
    return orElse();
  }
}

abstract class MaxLengthFailure implements StringFailure {
  const factory MaxLengthFailure(
      {required final String value,
      required final int length}) = _$MaxLengthFailure;

  String get value;
  int get length;
  @JsonKey(ignore: true)
  _$$MaxLengthFailureCopyWith<_$MaxLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinLengthFailureCopyWith<$Res> {
  factory _$$MinLengthFailureCopyWith(
          _$MinLengthFailure value, $Res Function(_$MinLengthFailure) then) =
      __$$MinLengthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, int length});
}

/// @nodoc
class __$$MinLengthFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$MinLengthFailure>
    implements _$$MinLengthFailureCopyWith<$Res> {
  __$$MinLengthFailureCopyWithImpl(
      _$MinLengthFailure _value, $Res Function(_$MinLengthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? length = null,
  }) {
    return _then(_$MinLengthFailure(
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

class _$MinLengthFailure implements MinLengthFailure {
  const _$MinLengthFailure({required this.value, required this.length});

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
            other is _$MinLengthFailure &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinLengthFailureCopyWith<_$MinLengthFailure> get copyWith =>
      __$$MinLengthFailureCopyWithImpl<_$MinLengthFailure>(this, _$identity);

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
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
    required TResult Function(InvalidCharacterFailure value) invalidCharacter,
  }) {
    return minLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
    TResult? Function(InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return minLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
    TResult Function(InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(this);
    }
    return orElse();
  }
}

abstract class MinLengthFailure implements StringFailure {
  const factory MinLengthFailure(
      {required final String value,
      required final int length}) = _$MinLengthFailure;

  String get value;
  int get length;
  @JsonKey(ignore: true)
  _$$MinLengthFailureCopyWith<_$MinLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStringFailureCopyWith<$Res> {
  factory _$$EmptyStringFailureCopyWith(_$EmptyStringFailure value,
          $Res Function(_$EmptyStringFailure) then) =
      __$$EmptyStringFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyStringFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$EmptyStringFailure>
    implements _$$EmptyStringFailureCopyWith<$Res> {
  __$$EmptyStringFailureCopyWithImpl(
      _$EmptyStringFailure _value, $Res Function(_$EmptyStringFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyStringFailure implements EmptyStringFailure {
  const _$EmptyStringFailure();

  @override
  String toString() {
    return 'StringFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyStringFailure);
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
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
    required TResult Function(InvalidCharacterFailure value) invalidCharacter,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
    TResult? Function(InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
    TResult Function(InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyStringFailure implements StringFailure {
  const factory EmptyStringFailure() = _$EmptyStringFailure;
}

/// @nodoc
abstract class _$$InvalidCharacterFailureCopyWith<$Res> {
  factory _$$InvalidCharacterFailureCopyWith(_$InvalidCharacterFailure value,
          $Res Function(_$InvalidCharacterFailure) then) =
      __$$InvalidCharacterFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$InvalidCharacterFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$InvalidCharacterFailure>
    implements _$$InvalidCharacterFailureCopyWith<$Res> {
  __$$InvalidCharacterFailureCopyWithImpl(_$InvalidCharacterFailure _value,
      $Res Function(_$InvalidCharacterFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$InvalidCharacterFailure(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidCharacterFailure implements InvalidCharacterFailure {
  const _$InvalidCharacterFailure({required this.value});

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
            other is _$InvalidCharacterFailure &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidCharacterFailureCopyWith<_$InvalidCharacterFailure> get copyWith =>
      __$$InvalidCharacterFailureCopyWithImpl<_$InvalidCharacterFailure>(
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
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
    required TResult Function(InvalidCharacterFailure value) invalidCharacter,
  }) {
    return invalidCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
    TResult? Function(InvalidCharacterFailure value)? invalidCharacter,
  }) {
    return invalidCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
    TResult Function(InvalidCharacterFailure value)? invalidCharacter,
    required TResult orElse(),
  }) {
    if (invalidCharacter != null) {
      return invalidCharacter(this);
    }
    return orElse();
  }
}

abstract class InvalidCharacterFailure implements StringFailure {
  const factory InvalidCharacterFailure({required final String value}) =
      _$InvalidCharacterFailure;

  String get value;
  @JsonKey(ignore: true)
  _$$InvalidCharacterFailureCopyWith<_$InvalidCharacterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UidFailure {
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
    required TResult Function(InvalidUid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidUid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UidFailureCopyWith<$Res> {
  factory $UidFailureCopyWith(
          UidFailure value, $Res Function(UidFailure) then) =
      _$UidFailureCopyWithImpl<$Res, UidFailure>;
}

/// @nodoc
class _$UidFailureCopyWithImpl<$Res, $Val extends UidFailure>
    implements $UidFailureCopyWith<$Res> {
  _$UidFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidUidCopyWith<$Res> {
  factory _$$InvalidUidCopyWith(
          _$InvalidUid value, $Res Function(_$InvalidUid) then) =
      __$$InvalidUidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidUidCopyWithImpl<$Res>
    extends _$UidFailureCopyWithImpl<$Res, _$InvalidUid>
    implements _$$InvalidUidCopyWith<$Res> {
  __$$InvalidUidCopyWithImpl(
      _$InvalidUid _value, $Res Function(_$InvalidUid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidUid implements InvalidUid {
  const _$InvalidUid();

  @override
  String toString() {
    return 'UidFailure.invalid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidUid);
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
    required TResult Function(InvalidUid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidUid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class InvalidUid implements UidFailure {
  const factory InvalidUid() = _$InvalidUid;
}
