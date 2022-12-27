// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function(String term) termChanged,
    required TResult Function() refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function(String term)? termChanged,
    TResult? Function()? refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String term)? termChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequested value) fetchRequested,
    required TResult Function(_TermChanged value) termChanged,
    required TResult Function(_RefreshRequested value) refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRequested value)? fetchRequested,
    TResult? Function(_TermChanged value)? termChanged,
    TResult? Function(_RefreshRequested value)? refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequested value)? fetchRequested,
    TResult Function(_TermChanged value)? termChanged,
    TResult Function(_RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchEventCopyWith<$Res> {
  factory $ClientSearchEventCopyWith(
          ClientSearchEvent value, $Res Function(ClientSearchEvent) then) =
      _$ClientSearchEventCopyWithImpl<$Res, ClientSearchEvent>;
}

/// @nodoc
class _$ClientSearchEventCopyWithImpl<$Res, $Val extends ClientSearchEvent>
    implements $ClientSearchEventCopyWith<$Res> {
  _$ClientSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchRequestedCopyWith<$Res> {
  factory _$$_FetchRequestedCopyWith(
          _$_FetchRequested value, $Res Function(_$_FetchRequested) then) =
      __$$_FetchRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchRequestedCopyWithImpl<$Res>
    extends _$ClientSearchEventCopyWithImpl<$Res, _$_FetchRequested>
    implements _$$_FetchRequestedCopyWith<$Res> {
  __$$_FetchRequestedCopyWithImpl(
      _$_FetchRequested _value, $Res Function(_$_FetchRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchRequested implements _FetchRequested {
  const _$_FetchRequested();

  @override
  String toString() {
    return 'ClientSearchEvent.fetchRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function(String term) termChanged,
    required TResult Function() refreshRequested,
  }) {
    return fetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function(String term)? termChanged,
    TResult? Function()? refreshRequested,
  }) {
    return fetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String term)? termChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequested value) fetchRequested,
    required TResult Function(_TermChanged value) termChanged,
    required TResult Function(_RefreshRequested value) refreshRequested,
  }) {
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRequested value)? fetchRequested,
    TResult? Function(_TermChanged value)? termChanged,
    TResult? Function(_RefreshRequested value)? refreshRequested,
  }) {
    return fetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequested value)? fetchRequested,
    TResult Function(_TermChanged value)? termChanged,
    TResult Function(_RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchRequested implements ClientSearchEvent {
  const factory _FetchRequested() = _$_FetchRequested;
}

/// @nodoc
abstract class _$$_TermChangedCopyWith<$Res> {
  factory _$$_TermChangedCopyWith(
          _$_TermChanged value, $Res Function(_$_TermChanged) then) =
      __$$_TermChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String term});
}

/// @nodoc
class __$$_TermChangedCopyWithImpl<$Res>
    extends _$ClientSearchEventCopyWithImpl<$Res, _$_TermChanged>
    implements _$$_TermChangedCopyWith<$Res> {
  __$$_TermChangedCopyWithImpl(
      _$_TermChanged _value, $Res Function(_$_TermChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = null,
  }) {
    return _then(_$_TermChanged(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TermChanged implements _TermChanged {
  const _$_TermChanged({required this.term});

  @override
  final String term;

  @override
  String toString() {
    return 'ClientSearchEvent.termChanged(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermChanged &&
            (identical(other.term, term) || other.term == term));
  }

  @override
  int get hashCode => Object.hash(runtimeType, term);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TermChangedCopyWith<_$_TermChanged> get copyWith =>
      __$$_TermChangedCopyWithImpl<_$_TermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function(String term) termChanged,
    required TResult Function() refreshRequested,
  }) {
    return termChanged(term);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function(String term)? termChanged,
    TResult? Function()? refreshRequested,
  }) {
    return termChanged?.call(term);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String term)? termChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (termChanged != null) {
      return termChanged(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequested value) fetchRequested,
    required TResult Function(_TermChanged value) termChanged,
    required TResult Function(_RefreshRequested value) refreshRequested,
  }) {
    return termChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRequested value)? fetchRequested,
    TResult? Function(_TermChanged value)? termChanged,
    TResult? Function(_RefreshRequested value)? refreshRequested,
  }) {
    return termChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequested value)? fetchRequested,
    TResult Function(_TermChanged value)? termChanged,
    TResult Function(_RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (termChanged != null) {
      return termChanged(this);
    }
    return orElse();
  }
}

abstract class _TermChanged implements ClientSearchEvent {
  const factory _TermChanged({required final String term}) = _$_TermChanged;

  String get term;
  @JsonKey(ignore: true)
  _$$_TermChangedCopyWith<_$_TermChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshRequestedCopyWith<$Res> {
  factory _$$_RefreshRequestedCopyWith(
          _$_RefreshRequested value, $Res Function(_$_RefreshRequested) then) =
      __$$_RefreshRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshRequestedCopyWithImpl<$Res>
    extends _$ClientSearchEventCopyWithImpl<$Res, _$_RefreshRequested>
    implements _$$_RefreshRequestedCopyWith<$Res> {
  __$$_RefreshRequestedCopyWithImpl(
      _$_RefreshRequested _value, $Res Function(_$_RefreshRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshRequested implements _RefreshRequested {
  const _$_RefreshRequested();

  @override
  String toString() {
    return 'ClientSearchEvent.refreshRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function(String term) termChanged,
    required TResult Function() refreshRequested,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function(String term)? termChanged,
    TResult? Function()? refreshRequested,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function(String term)? termChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRequested value) fetchRequested,
    required TResult Function(_TermChanged value) termChanged,
    required TResult Function(_RefreshRequested value) refreshRequested,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRequested value)? fetchRequested,
    TResult? Function(_TermChanged value)? termChanged,
    TResult? Function(_RefreshRequested value)? refreshRequested,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRequested value)? fetchRequested,
    TResult Function(_TermChanged value)? termChanged,
    TResult Function(_RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class _RefreshRequested implements ClientSearchEvent {
  const factory _RefreshRequested() = _$_RefreshRequested;
}

/// @nodoc
mixin _$ClientSearchState {
  String get term => throw _privateConstructorUsedError;
  ClientSearchStatus get status => throw _privateConstructorUsedError;
  SearchFilter get filter => throw _privateConstructorUsedError;
  Iterable<Client> get clients => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientSearchStateCopyWith<ClientSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchStateCopyWith<$Res> {
  factory $ClientSearchStateCopyWith(
          ClientSearchState value, $Res Function(ClientSearchState) then) =
      _$ClientSearchStateCopyWithImpl<$Res, ClientSearchState>;
  @useResult
  $Res call(
      {String term,
      ClientSearchStatus status,
      SearchFilter filter,
      Iterable<Client> clients,
      bool hasReachedMax});

  $ClientSearchStatusCopyWith<$Res> get status;
  $SearchFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$ClientSearchStateCopyWithImpl<$Res, $Val extends ClientSearchState>
    implements $ClientSearchStateCopyWith<$Res> {
  _$ClientSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = null,
    Object? status = null,
    Object? filter = null,
    Object? clients = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClientSearchStatus,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
      clients: null == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as Iterable<Client>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientSearchStatusCopyWith<$Res> get status {
    return $ClientSearchStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchFilterCopyWith<$Res> get filter {
    return $SearchFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClientSearchStateCopyWith<$Res>
    implements $ClientSearchStateCopyWith<$Res> {
  factory _$$_ClientSearchStateCopyWith(_$_ClientSearchState value,
          $Res Function(_$_ClientSearchState) then) =
      __$$_ClientSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String term,
      ClientSearchStatus status,
      SearchFilter filter,
      Iterable<Client> clients,
      bool hasReachedMax});

  @override
  $ClientSearchStatusCopyWith<$Res> get status;
  @override
  $SearchFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$_ClientSearchStateCopyWithImpl<$Res>
    extends _$ClientSearchStateCopyWithImpl<$Res, _$_ClientSearchState>
    implements _$$_ClientSearchStateCopyWith<$Res> {
  __$$_ClientSearchStateCopyWithImpl(
      _$_ClientSearchState _value, $Res Function(_$_ClientSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = null,
    Object? status = null,
    Object? filter = null,
    Object? clients = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_ClientSearchState(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClientSearchStatus,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
      clients: null == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as Iterable<Client>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClientSearchState implements _ClientSearchState {
  const _$_ClientSearchState(
      {required this.term,
      required this.status,
      required this.filter,
      required this.clients,
      required this.hasReachedMax});

  @override
  final String term;
  @override
  final ClientSearchStatus status;
  @override
  final SearchFilter filter;
  @override
  final Iterable<Client> clients;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ClientSearchState(term: $term, status: $status, filter: $filter, clients: $clients, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientSearchState &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality().equals(other.clients, clients) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, term, status, filter,
      const DeepCollectionEquality().hash(clients), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientSearchStateCopyWith<_$_ClientSearchState> get copyWith =>
      __$$_ClientSearchStateCopyWithImpl<_$_ClientSearchState>(
          this, _$identity);
}

abstract class _ClientSearchState implements ClientSearchState {
  const factory _ClientSearchState(
      {required final String term,
      required final ClientSearchStatus status,
      required final SearchFilter filter,
      required final Iterable<Client> clients,
      required final bool hasReachedMax}) = _$_ClientSearchState;

  @override
  String get term;
  @override
  ClientSearchStatus get status;
  @override
  SearchFilter get filter;
  @override
  Iterable<Client> get clients;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_ClientSearchStateCopyWith<_$_ClientSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchFilter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? name,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameFilter value) name,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameFilter value)? name,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameFilter value)? name,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res, SearchFilter>;
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res, $Val extends SearchFilter>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NameFilterCopyWith<$Res> {
  factory _$$_NameFilterCopyWith(
          _$_NameFilter value, $Res Function(_$_NameFilter) then) =
      __$$_NameFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NameFilterCopyWithImpl<$Res>
    extends _$SearchFilterCopyWithImpl<$Res, _$_NameFilter>
    implements _$$_NameFilterCopyWith<$Res> {
  __$$_NameFilterCopyWithImpl(
      _$_NameFilter _value, $Res Function(_$_NameFilter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NameFilter implements _NameFilter {
  const _$_NameFilter();

  @override
  String toString() {
    return 'SearchFilter.name()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NameFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
  }) {
    return name();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? name,
  }) {
    return name?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameFilter value) name,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameFilter value)? name,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameFilter value)? name,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class _NameFilter implements SearchFilter {
  const factory _NameFilter() = _$_NameFilter;
}
