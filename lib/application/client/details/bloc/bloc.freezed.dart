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
  Client get client => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) clientLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientLoaded value) clientLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientDetailsEventCopyWith<ClientDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsEventCopyWith<$Res> {
  factory $ClientDetailsEventCopyWith(
          ClientDetailsEvent value, $Res Function(ClientDetailsEvent) then) =
      _$ClientDetailsEventCopyWithImpl<$Res, ClientDetailsEvent>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class _$ClientDetailsEventCopyWithImpl<$Res, $Val extends ClientDetailsEvent>
    implements $ClientDetailsEventCopyWith<$Res> {
  _$ClientDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res> get client {
    return $ClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClientLoadedCopyWith<$Res>
    implements $ClientDetailsEventCopyWith<$Res> {
  factory _$$_ClientLoadedCopyWith(
          _$_ClientLoaded value, $Res Function(_$_ClientLoaded) then) =
      __$$_ClientLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Client client});

  @override
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
  }) {
    return clientLoaded(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? clientLoaded,
  }) {
    return clientLoaded?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? clientLoaded,
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
  }) {
    return clientLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientLoaded value)? clientLoaded,
  }) {
    return clientLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientLoaded value)? clientLoaded,
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

  @override
  Client get client;
  @override
  @JsonKey(ignore: true)
  _$$_ClientLoadedCopyWith<_$_ClientLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientDetailsState {
  Client get client => throw _privateConstructorUsedError;
  ClientDetailsStatus get status => throw _privateConstructorUsedError;

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
  $Res call({Client client, ClientDetailsStatus status});

  $ClientCopyWith<$Res> get client;
  $ClientDetailsStatusCopyWith<$Res> get status;
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
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClientDetailsStatus,
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
  $ClientDetailsStatusCopyWith<$Res> get status {
    return $ClientDetailsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
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
  $Res call({Client client, ClientDetailsStatus status});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $ClientDetailsStatusCopyWith<$Res> get status;
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
    Object? status = null,
  }) {
    return _then(_$_ClientDetailsState(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClientDetailsStatus,
    ));
  }
}

/// @nodoc

class _$_ClientDetailsState implements _ClientDetailsState {
  const _$_ClientDetailsState({required this.client, required this.status});

  @override
  final Client client;
  @override
  final ClientDetailsStatus status;

  @override
  String toString() {
    return 'ClientDetailsState(client: $client, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDetailsState &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client, status);

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
      required final ClientDetailsStatus status}) = _$_ClientDetailsState;

  @override
  Client get client;
  @override
  ClientDetailsStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDetailsStateCopyWith<_$_ClientDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
