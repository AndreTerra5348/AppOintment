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
mixin _$FormInput<T_Failure, T_Value> {
  ValueObject<T_Failure, T_Value> get object =>
      throw _privateConstructorUsedError;
  bool get isPure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormInputCopyWith<T_Failure, T_Value, FormInput<T_Failure, T_Value>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputCopyWith<T_Failure, T_Value, $Res> {
  factory $FormInputCopyWith(FormInput<T_Failure, T_Value> value,
          $Res Function(FormInput<T_Failure, T_Value>) then) =
      _$FormInputCopyWithImpl<T_Failure, T_Value, $Res,
          FormInput<T_Failure, T_Value>>;
  @useResult
  $Res call({ValueObject<T_Failure, T_Value> object, bool isPure});
}

/// @nodoc
class _$FormInputCopyWithImpl<T_Failure, T_Value, $Res,
        $Val extends FormInput<T_Failure, T_Value>>
    implements $FormInputCopyWith<T_Failure, T_Value, $Res> {
  _$FormInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? isPure = null,
  }) {
    return _then(_value.copyWith(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as ValueObject<T_Failure, T_Value>,
      isPure: null == isPure
          ? _value.isPure
          : isPure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormInputCopyWith<T_Failure, T_Value, $Res>
    implements $FormInputCopyWith<T_Failure, T_Value, $Res> {
  factory _$$_FormInputCopyWith(_$_FormInput<T_Failure, T_Value> value,
          $Res Function(_$_FormInput<T_Failure, T_Value>) then) =
      __$$_FormInputCopyWithImpl<T_Failure, T_Value, $Res>;
  @override
  @useResult
  $Res call({ValueObject<T_Failure, T_Value> object, bool isPure});
}

/// @nodoc
class __$$_FormInputCopyWithImpl<T_Failure, T_Value, $Res>
    extends _$FormInputCopyWithImpl<T_Failure, T_Value, $Res,
        _$_FormInput<T_Failure, T_Value>>
    implements _$$_FormInputCopyWith<T_Failure, T_Value, $Res> {
  __$$_FormInputCopyWithImpl(_$_FormInput<T_Failure, T_Value> _value,
      $Res Function(_$_FormInput<T_Failure, T_Value>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? isPure = null,
  }) {
    return _then(_$_FormInput<T_Failure, T_Value>(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as ValueObject<T_Failure, T_Value>,
      isPure: null == isPure
          ? _value.isPure
          : isPure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormInput<T_Failure, T_Value> extends _FormInput<T_Failure, T_Value> {
  const _$_FormInput({required this.object, required this.isPure}) : super._();

  @override
  final ValueObject<T_Failure, T_Value> object;
  @override
  final bool isPure;

  @override
  String toString() {
    return 'FormInput<$T_Failure, $T_Value>(object: $object, isPure: $isPure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInput<T_Failure, T_Value> &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.isPure, isPure) || other.isPure == isPure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, object, isPure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInputCopyWith<T_Failure, T_Value, _$_FormInput<T_Failure, T_Value>>
      get copyWith => __$$_FormInputCopyWithImpl<T_Failure, T_Value,
          _$_FormInput<T_Failure, T_Value>>(this, _$identity);
}

abstract class _FormInput<T_Failure, T_Value>
    extends FormInput<T_Failure, T_Value> {
  const factory _FormInput(
      {required final ValueObject<T_Failure, T_Value> object,
      required final bool isPure}) = _$_FormInput<T_Failure, T_Value>;
  const _FormInput._() : super._();

  @override
  ValueObject<T_Failure, T_Value> get object;
  @override
  bool get isPure;
  @override
  @JsonKey(ignore: true)
  _$$_FormInputCopyWith<T_Failure, T_Value, _$_FormInput<T_Failure, T_Value>>
      get copyWith => throw _privateConstructorUsedError;
}
