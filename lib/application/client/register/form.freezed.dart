// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientRegisterForm {
  FormSubmissionStatus get status => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientRegisterFormCopyWith<ClientRegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientRegisterFormCopyWith<$Res> {
  factory $ClientRegisterFormCopyWith(
          ClientRegisterForm value, $Res Function(ClientRegisterForm) then) =
      _$ClientRegisterFormCopyWithImpl<$Res, ClientRegisterForm>;
  @useResult
  $Res call({FormSubmissionStatus status, Name name});
}

/// @nodoc
class _$ClientRegisterFormCopyWithImpl<$Res, $Val extends ClientRegisterForm>
    implements $ClientRegisterFormCopyWith<$Res> {
  _$ClientRegisterFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientRegisterFormCopyWith<$Res>
    implements $ClientRegisterFormCopyWith<$Res> {
  factory _$$_ClientRegisterFormCopyWith(_$_ClientRegisterForm value,
          $Res Function(_$_ClientRegisterForm) then) =
      __$$_ClientRegisterFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormSubmissionStatus status, Name name});
}

/// @nodoc
class __$$_ClientRegisterFormCopyWithImpl<$Res>
    extends _$ClientRegisterFormCopyWithImpl<$Res, _$_ClientRegisterForm>
    implements _$$_ClientRegisterFormCopyWith<$Res> {
  __$$_ClientRegisterFormCopyWithImpl(
      _$_ClientRegisterForm _value, $Res Function(_$_ClientRegisterForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
  }) {
    return _then(_$_ClientRegisterForm(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormSubmissionStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
    ));
  }
}

/// @nodoc

class _$_ClientRegisterForm implements _ClientRegisterForm {
  const _$_ClientRegisterForm({required this.status, required this.name});

  @override
  final FormSubmissionStatus status;
  @override
  final Name name;

  @override
  String toString() {
    return 'ClientRegisterForm(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientRegisterForm &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientRegisterFormCopyWith<_$_ClientRegisterForm> get copyWith =>
      __$$_ClientRegisterFormCopyWithImpl<_$_ClientRegisterForm>(
          this, _$identity);
}

abstract class _ClientRegisterForm implements ClientRegisterForm {
  const factory _ClientRegisterForm(
      {required final FormSubmissionStatus status,
      required final Name name}) = _$_ClientRegisterForm;

  @override
  FormSubmissionStatus get status;
  @override
  Name get name;
  @override
  @JsonKey(ignore: true)
  _$$_ClientRegisterFormCopyWith<_$_ClientRegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}
