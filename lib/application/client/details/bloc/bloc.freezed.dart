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
mixin _$ClientDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) clientLoaded,
    required TResult Function() editPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
    TResult? Function()? editPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
    TResult Function()? editPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsEventCopyWith<$Res> {
  factory $ClientDetailsEventCopyWith(
          ClientDetailsEvent value, $Res Function(ClientDetailsEvent) then) =
      _$ClientDetailsEventCopyWithImpl<$Res, ClientDetailsEvent>;
}

/// @nodoc
class _$ClientDetailsEventCopyWithImpl<$Res, $Val extends ClientDetailsEvent>
    implements $ClientDetailsEventCopyWith<$Res> {
  _$ClientDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClientLoadedCopyWith<$Res> {
  factory _$$_ClientLoadedCopyWith(
          _$_ClientLoaded value, $Res Function(_$_ClientLoaded) then) =
      __$$_ClientLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$_ClientLoadedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_ClientLoaded>
    implements _$$_ClientLoadedCopyWith<$Res> {
  __$$_ClientLoadedCopyWithImpl(
      _$_ClientLoaded _value, $Res Function(_$_ClientLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$_ClientLoaded(
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

class _$_ClientLoaded implements _ClientLoaded {
  const _$_ClientLoaded({required this.client});

  @override
  final Client client;

  @override
  String toString() {
    return 'ClientDetailsEvent.clientLoaded(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientLoaded &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientLoadedCopyWith<_$_ClientLoaded> get copyWith =>
      __$$_ClientLoadedCopyWithImpl<_$_ClientLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) clientLoaded,
    required TResult Function() editPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return clientLoaded(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
    TResult? Function()? editPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return clientLoaded?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
    TResult Function()? editPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (clientLoaded != null) {
      return clientLoaded(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return clientLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return clientLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_EditPressed value)? editPressed,
    TResult Function(_SavePressed value)? savePressed,
    TResult Function(_NameChanged value)? nameChanged,
    required TResult orElse(),
  }) {
    if (clientLoaded != null) {
      return clientLoaded(this);
    }
    return orElse();
  }
}

abstract class _ClientLoaded implements ClientDetailsEvent {
  const factory _ClientLoaded({required final Client client}) = _$_ClientLoaded;

  Client get client;
  @JsonKey(ignore: true)
  _$$_ClientLoadedCopyWith<_$_ClientLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditPressedCopyWith<$Res> {
  factory _$$_EditPressedCopyWith(
          _$_EditPressed value, $Res Function(_$_EditPressed) then) =
      __$$_EditPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditPressedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_EditPressed>
    implements _$$_EditPressedCopyWith<$Res> {
  __$$_EditPressedCopyWithImpl(
      _$_EditPressed _value, $Res Function(_$_EditPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditPressed implements _EditPressed {
  const _$_EditPressed();

  @override
  String toString() {
    return 'ClientDetailsEvent.editPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EditPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) clientLoaded,
    required TResult Function() editPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return editPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
    TResult? Function()? editPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return editPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
    TResult Function()? editPressed,
    TResult Function()? savePressed,
    TResult Function(String name)? nameChanged,
    required TResult orElse(),
  }) {
    if (editPressed != null) {
      return editPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return editPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return editPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_EditPressed value)? editPressed,
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

abstract class _EditPressed implements ClientDetailsEvent {
  const factory _EditPressed() = _$_EditPressed;
}

/// @nodoc
abstract class _$$_SavePressedCopyWith<$Res> {
  factory _$$_SavePressedCopyWith(
          _$_SavePressed value, $Res Function(_$_SavePressed) then) =
      __$$_SavePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavePressedCopyWithImpl<$Res>
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_SavePressed>
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
    return 'ClientDetailsEvent.savePressed()';
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
    required TResult Function(Client client) clientLoaded,
    required TResult Function() editPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return savePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
    TResult? Function()? editPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return savePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
    TResult Function()? editPressed,
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
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return savePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return savePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_EditPressed value)? editPressed,
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

abstract class _SavePressed implements ClientDetailsEvent {
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
    extends _$ClientDetailsEventCopyWithImpl<$Res, _$_NameChanged>
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
    return 'ClientDetailsEvent.nameChanged(name: $name)';
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
    required TResult Function(Client client) clientLoaded,
    required TResult Function() editPressed,
    required TResult Function() savePressed,
    required TResult Function(String name) nameChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
    TResult? Function()? editPressed,
    TResult? Function()? savePressed,
    TResult? Function(String name)? nameChanged,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
    TResult Function()? editPressed,
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
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_EditPressed value) editPressed,
    required TResult Function(_SavePressed value) savePressed,
    required TResult Function(_NameChanged value) nameChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_EditPressed value)? editPressed,
    TResult? Function(_SavePressed value)? savePressed,
    TResult? Function(_NameChanged value)? nameChanged,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_EditPressed value)? editPressed,
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

abstract class _NameChanged implements ClientDetailsEvent {
  const factory _NameChanged({required final String name}) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientDetailsState {
  Client get client => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  SubmissionStatus get submissionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientDetailsStateCopyWith<ClientDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsStateCopyWith<$Res> {
  factory $ClientDetailsStateCopyWith(
          ClientDetailsState value, $Res Function(ClientDetailsState) then) =
      _$ClientDetailsStateCopyWithImpl<$Res, ClientDetailsState>;
  @useResult
  $Res call({Client client, bool isEditing, SubmissionStatus submissionStatus});

  $ClientCopyWith<$Res> get client;
  $SubmissionStatusCopyWith<$Res> get submissionStatus;
}

/// @nodoc
class _$ClientDetailsStateCopyWithImpl<$Res, $Val extends ClientDetailsState>
    implements $ClientDetailsStateCopyWith<$Res> {
  _$ClientDetailsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ClientDetailsStateCopyWith<$Res>
    implements $ClientDetailsStateCopyWith<$Res> {
  factory _$$_ClientDetailsStateCopyWith(_$_ClientDetailsState value,
          $Res Function(_$_ClientDetailsState) then) =
      __$$_ClientDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Client client, bool isEditing, SubmissionStatus submissionStatus});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $SubmissionStatusCopyWith<$Res> get submissionStatus;
}

/// @nodoc
class __$$_ClientDetailsStateCopyWithImpl<$Res>
    extends _$ClientDetailsStateCopyWithImpl<$Res, _$_ClientDetailsState>
    implements _$$_ClientDetailsStateCopyWith<$Res> {
  __$$_ClientDetailsStateCopyWithImpl(
      _$_ClientDetailsState _value, $Res Function(_$_ClientDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? isEditing = null,
    Object? submissionStatus = null,
  }) {
    return _then(_$_ClientDetailsState(
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

class _$_ClientDetailsState implements _ClientDetailsState {
  const _$_ClientDetailsState(
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
    return 'ClientDetailsState(client: $client, isEditing: $isEditing, submissionStatus: $submissionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDetailsState &&
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
  _$$_ClientDetailsStateCopyWith<_$_ClientDetailsState> get copyWith =>
      __$$_ClientDetailsStateCopyWithImpl<_$_ClientDetailsState>(
          this, _$identity);
}

abstract class _ClientDetailsState implements ClientDetailsState {
  const factory _ClientDetailsState(
          {required final Client client,
          required final bool isEditing,
          required final SubmissionStatus submissionStatus}) =
      _$_ClientDetailsState;

  @override
  Client get client;
  @override
  bool get isEditing;
  @override
  SubmissionStatus get submissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDetailsStateCopyWith<_$_ClientDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
