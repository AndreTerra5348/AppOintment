// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'string_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StringFailure {
  String get value => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) exceedingLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? exceedingLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? exceedingLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength value) exceedingLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength value)? exceedingLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength value)? exceedingLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StringFailureCopyWith<StringFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFailureCopyWith<$Res> {
  factory $StringFailureCopyWith(
          StringFailure value, $Res Function(StringFailure) then) =
      _$StringFailureCopyWithImpl<$Res, StringFailure>;
  @useResult
  $Res call({String value, int length});
}

/// @nodoc
class _$StringFailureCopyWithImpl<$Res, $Val extends StringFailure>
    implements $StringFailureCopyWith<$Res> {
  _$StringFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<$Res>
    implements $StringFailureCopyWith<$Res> {
  factory _$$ExceedingLengthCopyWith(
          _$ExceedingLength value, $Res Function(_$ExceedingLength) then) =
      __$$ExceedingLengthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, int length});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$ExceedingLength>
    implements _$$ExceedingLengthCopyWith<$Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength _value, $Res Function(_$ExceedingLength) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? length = null,
  }) {
    return _then(_$ExceedingLength(
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

class _$ExceedingLength implements ExceedingLength {
  const _$ExceedingLength({required this.value, required this.length});

  @override
  final String value;
  @override
  final int length;

  @override
  String toString() {
    return 'StringFailure.exceedingLength(value: $value, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthCopyWith<_$ExceedingLength> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<_$ExceedingLength>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) exceedingLength,
  }) {
    return exceedingLength(value, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? exceedingLength,
  }) {
    return exceedingLength?.call(value, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? exceedingLength,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(value, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength value) exceedingLength,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength value)? exceedingLength,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength value)? exceedingLength,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength implements StringFailure {
  const factory ExceedingLength(
      {required final String value,
      required final int length}) = _$ExceedingLength;

  @override
  String get value;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<_$ExceedingLength> get copyWith =>
      throw _privateConstructorUsedError;
}
