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
mixin _$ClientDetailsDeleteEvent {
  Client get client => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientDetailsDeleteEventCopyWith<ClientDetailsDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsDeleteEventCopyWith<$Res> {
  factory $ClientDetailsDeleteEventCopyWith(ClientDetailsDeleteEvent value,
          $Res Function(ClientDetailsDeleteEvent) then) =
      _$ClientDetailsDeleteEventCopyWithImpl<$Res, ClientDetailsDeleteEvent>;
  @useResult
  $Res call({Client client});

  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class _$ClientDetailsDeleteEventCopyWithImpl<$Res,
        $Val extends ClientDetailsDeleteEvent>
    implements $ClientDetailsDeleteEventCopyWith<$Res> {
  _$ClientDetailsDeleteEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeletedCopyWith<$Res>
    implements $ClientDetailsDeleteEventCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Client client});

  @override
  $ClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$ClientDetailsDeleteEventCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$_Deleted(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted({required this.client});

  @override
  final Client client;

  @override
  String toString() {
    return 'ClientDetailsDeleteEvent.deleted(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) deleted,
  }) {
    return deleted(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? deleted,
  }) {
    return deleted?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ClientDetailsDeleteEvent {
  const factory _Deleted({required final Client client}) = _$_Deleted;

  @override
  Client get client;
  @override
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientDetailsDeleteState {
  Client get client => throw _privateConstructorUsedError;
  SubmissionStatus get submissionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientDetailsDeleteStateCopyWith<ClientDetailsDeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsDeleteStateCopyWith<$Res> {
  factory $ClientDetailsDeleteStateCopyWith(ClientDetailsDeleteState value,
          $Res Function(ClientDetailsDeleteState) then) =
      _$ClientDetailsDeleteStateCopyWithImpl<$Res, ClientDetailsDeleteState>;
  @useResult
  $Res call({Client client, SubmissionStatus submissionStatus});

  $ClientCopyWith<$Res> get client;
  $SubmissionStatusCopyWith<$Res> get submissionStatus;
}

/// @nodoc
class _$ClientDetailsDeleteStateCopyWithImpl<$Res,
        $Val extends ClientDetailsDeleteState>
    implements $ClientDetailsDeleteStateCopyWith<$Res> {
  _$ClientDetailsDeleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? submissionStatus = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
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
abstract class _$$_ClientDetailsDeleteStateCopyWith<$Res>
    implements $ClientDetailsDeleteStateCopyWith<$Res> {
  factory _$$_ClientDetailsDeleteStateCopyWith(
          _$_ClientDetailsDeleteState value,
          $Res Function(_$_ClientDetailsDeleteState) then) =
      __$$_ClientDetailsDeleteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Client client, SubmissionStatus submissionStatus});

  @override
  $ClientCopyWith<$Res> get client;
  @override
  $SubmissionStatusCopyWith<$Res> get submissionStatus;
}

/// @nodoc
class __$$_ClientDetailsDeleteStateCopyWithImpl<$Res>
    extends _$ClientDetailsDeleteStateCopyWithImpl<$Res,
        _$_ClientDetailsDeleteState>
    implements _$$_ClientDetailsDeleteStateCopyWith<$Res> {
  __$$_ClientDetailsDeleteStateCopyWithImpl(_$_ClientDetailsDeleteState _value,
      $Res Function(_$_ClientDetailsDeleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? submissionStatus = null,
  }) {
    return _then(_$_ClientDetailsDeleteState(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmissionStatus,
    ));
  }
}

/// @nodoc

class _$_ClientDetailsDeleteState implements _ClientDetailsDeleteState {
  const _$_ClientDetailsDeleteState(
      {required this.client, required this.submissionStatus});

  @override
  final Client client;
  @override
  final SubmissionStatus submissionStatus;

  @override
  String toString() {
    return 'ClientDetailsDeleteState(client: $client, submissionStatus: $submissionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDetailsDeleteState &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client, submissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientDetailsDeleteStateCopyWith<_$_ClientDetailsDeleteState>
      get copyWith => __$$_ClientDetailsDeleteStateCopyWithImpl<
          _$_ClientDetailsDeleteState>(this, _$identity);
}

abstract class _ClientDetailsDeleteState implements ClientDetailsDeleteState {
  const factory _ClientDetailsDeleteState(
          {required final Client client,
          required final SubmissionStatus submissionStatus}) =
      _$_ClientDetailsDeleteState;

  @override
  Client get client;
  @override
  SubmissionStatus get submissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDetailsDeleteStateCopyWith<_$_ClientDetailsDeleteState>
      get copyWith => throw _privateConstructorUsedError;
}
