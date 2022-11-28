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
mixin _$ClientDetailsEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) editPressed,
    required TResult Function() cancelPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? editPressed,
    TResult? Function()? cancelPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? editPressed,
    TResult Function()? cancelPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_CancelPressed value)? cancelPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsEditEventCopyWith<$Res> {
  factory $ClientDetailsEditEventCopyWith(ClientDetailsEditEvent value,
          $Res Function(ClientDetailsEditEvent) then) =
      _$ClientDetailsEditEventCopyWithImpl<$Res, ClientDetailsEditEvent>;
}

/// @nodoc
class _$ClientDetailsEditEventCopyWithImpl<$Res,
        $Val extends ClientDetailsEditEvent>
    implements $ClientDetailsEditEventCopyWith<$Res> {
  _$ClientDetailsEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EditPressedCopyWith<$Res> {
  factory _$$_EditPressedCopyWith(
          _$_EditPressed value, $Res Function(_$_EditPressed) then) =
      __$$_EditPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$_EditPressedCopyWithImpl<$Res>
    extends _$ClientDetailsEditEventCopyWithImpl<$Res, _$_EditPressed>
    implements _$$_EditPressedCopyWith<$Res> {
  __$$_EditPressedCopyWithImpl(
      _$_EditPressed _value, $Res Function(_$_EditPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$_EditPressed(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value));
    });
  }
}

/// @nodoc

class _$_EditPressed implements _EditPressed {
  const _$_EditPressed({required this.client});

  @override
  final Client client;

  @override
  String toString() {
    return 'ClientDetailsEditEvent.editPressed(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPressed &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPressedCopyWith<_$_EditPressed> get copyWith =>
      __$$_EditPressedCopyWithImpl<_$_EditPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) editPressed,
    required TResult Function() cancelPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return editPressed(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? editPressed,
    TResult? Function()? cancelPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return editPressed?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? editPressed,
    TResult Function()? cancelPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return editPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_CancelPressed value)? cancelPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return editPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed(this);
    }
    return orElse();
  }
}

abstract class _EditPressed implements ClientDetailsEditEvent {
  const factory _EditPressed({required final Client client}) = _$_EditPressed;

  Client get client;
  @JsonKey(ignore: true)
  _$$_EditPressedCopyWith<_$_EditPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelPressedCopyWith<$Res> {
  factory _$$_CancelPressedCopyWith(
          _$_CancelPressed value, $Res Function(_$_CancelPressed) then) =
      __$$_CancelPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelPressedCopyWithImpl<$Res>
    extends _$ClientDetailsEditEventCopyWithImpl<$Res, _$_CancelPressed>
    implements _$$_CancelPressedCopyWith<$Res> {
  __$$_CancelPressedCopyWithImpl(
      _$_CancelPressed _value, $Res Function(_$_CancelPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelPressed implements _CancelPressed {
  const _$_CancelPressed();

  @override
  String toString() {
    return 'ClientDetailsEditEvent.cancelPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) editPressed,
    required TResult Function() cancelPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return cancelPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? editPressed,
    TResult? Function()? cancelPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return cancelPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? editPressed,
    TResult Function()? cancelPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return cancelPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_CancelPressed value)? cancelPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return cancelPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed(this);
    }
    return orElse();
  }
}

abstract class _CancelPressed implements ClientDetailsEditEvent {
  const factory _CancelPressed() = _$_CancelPressed;
}

/// @nodoc
abstract class _$$_SavePressedCopyWith<$Res> {
  factory _$$_SavePressedCopyWith(
          _$_SavePressed value, $Res Function(_$_SavePressed) then) =
      __$$_SavePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavePressedCopyWithImpl<$Res>
    extends _$ClientDetailsEditEventCopyWithImpl<$Res, _$_SavePressed>
    implements _$$_SavePressedCopyWith<$Res> {
  __$$_SavePressedCopyWithImpl(
      _$_SavePressed _value, $Res Function(_$_SavePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavePressed implements _SavePressed {
  const _$_SavePressed();

  @override
  String toString() {
    return 'ClientDetailsEditEvent.savePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) editPressed,
    required TResult Function() cancelPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return savePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? editPressed,
    TResult? Function()? cancelPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return savePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? editPressed,
    TResult Function()? cancelPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (savePressed != null) {
      return savePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return savePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_CancelPressed value)? cancelPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return savePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (savePressed != null) {
      return savePressed(this);
    }
    return orElse();
  }
}

abstract class _SavePressed implements ClientDetailsEditEvent {
  const factory _SavePressed() = _$_SavePressed;
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
    extends _$ClientDetailsEditEventCopyWithImpl<$Res, _$_NameChanged>
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
    return 'ClientDetailsEditEvent.nameChanged(name: $name)';
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
    required TResult Function(Client client) editPressed,
    required TResult Function() cancelPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? editPressed,
    TResult? Function()? cancelPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? editPressed,
    TResult Function()? cancelPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
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
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_CancelPressed value)? cancelPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ClientDetailsEditEvent {
  const factory _NameChanged({required final String name}) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientDetailsEditState {
  Client get client => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  SubmissionStatus get submissionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientDetailsEditStateCopyWith<ClientDetailsEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsEditStateCopyWith<$Res> {
  factory $ClientDetailsEditStateCopyWith(ClientDetailsEditState value,
          $Res Function(ClientDetailsEditState) then) =
      _$ClientDetailsEditStateCopyWithImpl<$Res, ClientDetailsEditState>;
  @useResult
  $Res call({Client client, bool isEditing, SubmissionStatus submissionStatus});

  $ClientCopyWith<$Res> get client;
  $SubmissionStatusCopyWith<$Res> get submissionStatus;
}

/// @nodoc
class _$ClientDetailsEditStateCopyWithImpl<$Res,
        $Val extends ClientDetailsEditState>
    implements $ClientDetailsEditStateCopyWith<$Res> {
  _$ClientDetailsEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? isEditing = null,
    Object? submissionStatus = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmissionStatusCopyWith<$Res> get submissionStatus {
    return $SubmissionStatusCopyWith<$Res>(_value.submissionStatus, (value) {
      return _then(_value.copyWith(submissionStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClientDetailsEditStateCopyWith<$Res>
    implements $ClientDetailsEditStateCopyWith<$Res> {
  factory _$$_ClientDetailsEditStateCopyWith(_$_ClientDetailsEditState value,
          $Res Function(_$_ClientDetailsEditState) then) =
      __$$_ClientDetailsEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Client client, bool isEditing, SubmissionStatus submissionStatus});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $SubmissionStatusCopyWith<$Res> get submissionStatus;
}

/// @nodoc
class __$$_ClientDetailsEditStateCopyWithImpl<$Res>
    extends _$ClientDetailsEditStateCopyWithImpl<$Res,
        _$_ClientDetailsEditState>
    implements _$$_ClientDetailsEditStateCopyWith<$Res> {
  __$$_ClientDetailsEditStateCopyWithImpl(_$_ClientDetailsEditState _value,
      $Res Function(_$_ClientDetailsEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? isEditing = null,
    Object? submissionStatus = null,
  }) {
    return _then(_$_ClientDetailsEditState(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
    ));
  }
}

/// @nodoc

class _$_ClientDetailsEditState implements _ClientDetailsEditState {
  const _$_ClientDetailsEditState(
      {required this.client,
      required this.isEditing,
      required this.submissionStatus});

  @override
  final Client client;
  @override
  final bool isEditing;
  @override
  final SubmissionStatus submissionStatus;

  @override
  String toString() {
    return 'ClientDetailsEditState(client: $client, isEditing: $isEditing, submissionStatus: $submissionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDetailsEditState &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, client, isEditing, submissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientDetailsEditStateCopyWith<_$_ClientDetailsEditState> get copyWith =>
      __$$_ClientDetailsEditStateCopyWithImpl<_$_ClientDetailsEditState>(
          this, _$identity);
}

abstract class _ClientDetailsEditState implements ClientDetailsEditState {
  const factory _ClientDetailsEditState(
          {required final Client client,
          required final bool isEditing,
          required final SubmissionStatus submissionStatus}) =
      _$_ClientDetailsEditState;

  @override
  Client get client;
  @override
  bool get isEditing;
  @override
  SubmissionStatus get submissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDetailsEditStateCopyWith<_$_ClientDetailsEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
