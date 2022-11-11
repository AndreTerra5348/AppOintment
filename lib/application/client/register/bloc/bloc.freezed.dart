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
mixin _$ClientRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientRegisterEventCopyWith<$Res> {
  factory $ClientRegisterEventCopyWith(
          ClientRegisterEvent value, $Res Function(ClientRegisterEvent) then) =
      _$ClientRegisterEventCopyWithImpl<$Res, ClientRegisterEvent>;
}

/// @nodoc
class _$ClientRegisterEventCopyWithImpl<$Res, $Val extends ClientRegisterEvent>
    implements $ClientRegisterEventCopyWith<$Res> {
  _$ClientRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$ClientRegisterEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'ClientRegisterEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ClientRegisterEvent {
  const factory _NameChanged({required final String name}) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$ClientRegisterEventCopyWithImpl<$Res, _$_Submitted>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'ClientRegisterEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ClientRegisterEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
mixin _$ClientRegisterState {
  ClientRegisterForm get form => throw _privateConstructorUsedError;
  RepositoryFailure? get repositoryFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientRegisterStateCopyWith<ClientRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientRegisterStateCopyWith<$Res> {
  factory $ClientRegisterStateCopyWith(
          ClientRegisterState value, $Res Function(ClientRegisterState) then) =
      _$ClientRegisterStateCopyWithImpl<$Res, ClientRegisterState>;
  @useResult
  $Res call({ClientRegisterForm form, RepositoryFailure? repositoryFailure});

  $ClientRegisterFormCopyWith<$Res> get form;
  $RepositoryFailureCopyWith<$Res>? get repositoryFailure;
}

/// @nodoc
class _$ClientRegisterStateCopyWithImpl<$Res, $Val extends ClientRegisterState>
    implements $ClientRegisterStateCopyWith<$Res> {
  _$ClientRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? repositoryFailure = freezed,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as ClientRegisterForm,
      repositoryFailure: freezed == repositoryFailure
          ? _value.repositoryFailure
          : repositoryFailure // ignore: cast_nullable_to_non_nullable
              as RepositoryFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientRegisterFormCopyWith<$Res> get form {
    return $ClientRegisterFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryFailureCopyWith<$Res>? get repositoryFailure {
    if (_value.repositoryFailure == null) {
      return null;
    }

    return $RepositoryFailureCopyWith<$Res>(_value.repositoryFailure!, (value) {
      return _then(_value.copyWith(repositoryFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClientFormStateCopyWith<$Res>
    implements $ClientRegisterStateCopyWith<$Res> {
  factory _$$_ClientFormStateCopyWith(
          _$_ClientFormState value, $Res Function(_$_ClientFormState) then) =
      __$$_ClientFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClientRegisterForm form, RepositoryFailure? repositoryFailure});

  @override
  $ClientRegisterFormCopyWith<$Res> get form;
  @override
  $RepositoryFailureCopyWith<$Res>? get repositoryFailure;
}

/// @nodoc
class __$$_ClientFormStateCopyWithImpl<$Res>
    extends _$ClientRegisterStateCopyWithImpl<$Res, _$_ClientFormState>
    implements _$$_ClientFormStateCopyWith<$Res> {
  __$$_ClientFormStateCopyWithImpl(
      _$_ClientFormState _value, $Res Function(_$_ClientFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
    Object? repositoryFailure = freezed,
  }) {
    return _then(_$_ClientFormState(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as ClientRegisterForm,
      repositoryFailure: freezed == repositoryFailure
          ? _value.repositoryFailure
          : repositoryFailure // ignore: cast_nullable_to_non_nullable
              as RepositoryFailure?,
    ));
  }
}

/// @nodoc

class _$_ClientFormState implements _ClientFormState {
  const _$_ClientFormState({required this.form, this.repositoryFailure});

  @override
  final ClientRegisterForm form;
  @override
  final RepositoryFailure? repositoryFailure;

  @override
  String toString() {
    return 'ClientRegisterState(form: $form, repositoryFailure: $repositoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFormState &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.repositoryFailure, repositoryFailure) ||
                other.repositoryFailure == repositoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form, repositoryFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFormStateCopyWith<_$_ClientFormState> get copyWith =>
      __$$_ClientFormStateCopyWithImpl<_$_ClientFormState>(this, _$identity);
}

abstract class _ClientFormState implements ClientRegisterState {
  const factory _ClientFormState(
      {required final ClientRegisterForm form,
      final RepositoryFailure? repositoryFailure}) = _$_ClientFormState;

  @override
  ClientRegisterForm get form;
  @override
  RepositoryFailure? get repositoryFailure;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFormStateCopyWith<_$_ClientFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
