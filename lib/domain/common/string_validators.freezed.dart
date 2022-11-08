// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'string_validators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StringFailure {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function(String value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function(String value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function(String value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
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
  $Res call({String value});
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
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaxLengthFailureCopyWith<$Res>
    implements $StringFailureCopyWith<$Res> {
  factory _$$MaxLengthFailureCopyWith(
          _$MaxLengthFailure value, $Res Function(_$MaxLengthFailure) then) =
      __$$MaxLengthFailureCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String value) empty,
  }) {
    return maxLength(value, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function(String value)? empty,
  }) {
    return maxLength?.call(value, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function(String value)? empty,
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
  }) {
    return maxLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
  }) {
    return maxLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
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

  @override
  String get value;
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$MaxLengthFailureCopyWith<_$MaxLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinLengthFailureCopyWith<$Res>
    implements $StringFailureCopyWith<$Res> {
  factory _$$MinLengthFailureCopyWith(
          _$MinLengthFailure value, $Res Function(_$MinLengthFailure) then) =
      __$$MinLengthFailureCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String value) empty,
  }) {
    return minLength(value, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function(String value)? empty,
  }) {
    return minLength?.call(value, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function(String value)? empty,
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
  }) {
    return minLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
  }) {
    return minLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
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

  @override
  String get value;
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$MinLengthFailureCopyWith<_$MinLengthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStringFailureCopyWith<$Res>
    implements $StringFailureCopyWith<$Res> {
  factory _$$EmptyStringFailureCopyWith(_$EmptyStringFailure value,
          $Res Function(_$EmptyStringFailure) then) =
      __$$EmptyStringFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$EmptyStringFailureCopyWithImpl<$Res>
    extends _$StringFailureCopyWithImpl<$Res, _$EmptyStringFailure>
    implements _$$EmptyStringFailureCopyWith<$Res> {
  __$$EmptyStringFailureCopyWithImpl(
      _$EmptyStringFailure _value, $Res Function(_$EmptyStringFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$EmptyStringFailure(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyStringFailure implements EmptyStringFailure {
  const _$EmptyStringFailure({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'StringFailure.empty(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyStringFailure &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyStringFailureCopyWith<_$EmptyStringFailure> get copyWith =>
      __$$EmptyStringFailureCopyWithImpl<_$EmptyStringFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, int length) maxLength,
    required TResult Function(String value, int length) minLength,
    required TResult Function(String value) empty,
  }) {
    return empty(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, int length)? maxLength,
    TResult? Function(String value, int length)? minLength,
    TResult? Function(String value)? empty,
  }) {
    return empty?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, int length)? maxLength,
    TResult Function(String value, int length)? minLength,
    TResult Function(String value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxLengthFailure value) maxLength,
    required TResult Function(MinLengthFailure value) minLength,
    required TResult Function(EmptyStringFailure value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaxLengthFailure value)? maxLength,
    TResult? Function(MinLengthFailure value)? minLength,
    TResult? Function(EmptyStringFailure value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxLengthFailure value)? maxLength,
    TResult Function(MinLengthFailure value)? minLength,
    TResult Function(EmptyStringFailure value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyStringFailure implements StringFailure {
  const factory EmptyStringFailure({required final String value}) =
      _$EmptyStringFailure;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$EmptyStringFailureCopyWith<_$EmptyStringFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
