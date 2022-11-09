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
    required TResult Function() nameUnfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function()? nameUnfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NameUnfocused value) nameUnfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NameUnfocused value)? nameUnfocused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NameUnfocused value)? nameUnfocused,
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
    required TResult Function() nameUnfocused,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function()? nameUnfocused,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
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
    required TResult Function(_NameUnfocused value) nameUnfocused,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NameUnfocused value)? nameUnfocused,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NameUnfocused value)? nameUnfocused,
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
abstract class _$$_NameUnfocusedCopyWith<$Res> {
  factory _$$_NameUnfocusedCopyWith(
          _$_NameUnfocused value, $Res Function(_$_NameUnfocused) then) =
      __$$_NameUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NameUnfocusedCopyWithImpl<$Res>
    extends _$ClientRegisterEventCopyWithImpl<$Res, _$_NameUnfocused>
    implements _$$_NameUnfocusedCopyWith<$Res> {
  __$$_NameUnfocusedCopyWithImpl(
      _$_NameUnfocused _value, $Res Function(_$_NameUnfocused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NameUnfocused implements _NameUnfocused {
  const _$_NameUnfocused();

  @override
  String toString() {
    return 'ClientRegisterEvent.nameUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NameUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function() nameUnfocused,
  }) {
    return nameUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function()? nameUnfocused,
  }) {
    return nameUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function()? nameUnfocused,
    required TResult orElse(),
  }) {
    if (nameUnfocused != null) {
      return nameUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NameUnfocused value) nameUnfocused,
  }) {
    return nameUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NameUnfocused value)? nameUnfocused,
  }) {
    return nameUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NameUnfocused value)? nameUnfocused,
    required TResult orElse(),
  }) {
    if (nameUnfocused != null) {
      return nameUnfocused(this);
    }
    return orElse();
  }
}

abstract class _NameUnfocused implements ClientRegisterEvent {
  const factory _NameUnfocused() = _$_NameUnfocused;
}

/// @nodoc
mixin _$ClientRegisterState {
  ClientRegisterForm get form => throw _privateConstructorUsedError;

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
  $Res call({ClientRegisterForm form});

  $ClientRegisterFormCopyWith<$Res> get form;
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
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as ClientRegisterForm,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientRegisterFormCopyWith<$Res> get form {
    return $ClientRegisterFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
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
  $Res call({ClientRegisterForm form});

  @override
  $ClientRegisterFormCopyWith<$Res> get form;
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
  }) {
    return _then(_$_ClientFormState(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as ClientRegisterForm,
    ));
  }
}

/// @nodoc

class _$_ClientFormState implements _ClientFormState {
  const _$_ClientFormState({required this.form});

  @override
  final ClientRegisterForm form;

  @override
  String toString() {
    return 'ClientRegisterState(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFormState &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFormStateCopyWith<_$_ClientFormState> get copyWith =>
      __$$_ClientFormStateCopyWithImpl<_$_ClientFormState>(this, _$identity);
}

abstract class _ClientFormState implements ClientRegisterState {
  const factory _ClientFormState({required final ClientRegisterForm form}) =
      _$_ClientFormState;

  @override
  ClientRegisterForm get form;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFormStateCopyWith<_$_ClientFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
