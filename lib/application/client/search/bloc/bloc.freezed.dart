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
mixin _$ClientSearchEvent {
  String get term => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String term)? termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? termChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TermChanged value) termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TermChanged value)? termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermChanged value)? termChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientSearchEventCopyWith<ClientSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientSearchEventCopyWith<$Res> {
  factory $ClientSearchEventCopyWith(
          ClientSearchEvent value, $Res Function(ClientSearchEvent) then) =
      _$ClientSearchEventCopyWithImpl<$Res, ClientSearchEvent>;
  @useResult
  $Res call({String term});
}

/// @nodoc
class _$ClientSearchEventCopyWithImpl<$Res, $Val extends ClientSearchEvent>
    implements $ClientSearchEventCopyWith<$Res> {
  _$ClientSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = null,
  }) {
    return _then(_value.copyWith(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TermChangedCopyWith<$Res>
    implements $ClientSearchEventCopyWith<$Res> {
  factory _$$_TermChangedCopyWith(
          _$_TermChanged value, $Res Function(_$_TermChanged) then) =
      __$$_TermChangedCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String term) termChanged,
  }) {
    return termChanged(term);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String term)? termChanged,
  }) {
    return termChanged?.call(term);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? termChanged,
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
    required TResult Function(_TermChanged value) termChanged,
  }) {
    return termChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TermChanged value)? termChanged,
  }) {
    return termChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermChanged value)? termChanged,
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

  @override
  String get term;
  @override
  @JsonKey(ignore: true)
  _$$_TermChangedCopyWith<_$_TermChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientSearchState {
  String get term => throw _privateConstructorUsedError;
  SearchFilter get filter => throw _privateConstructorUsedError;

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
  $Res call({String term, SearchFilter filter});

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
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
    ) as $Val);
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
  $Res call({String term, SearchFilter filter});

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
    Object? filter = null,
  }) {
    return _then(_$_ClientSearchState(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
    ));
  }
}

/// @nodoc

class _$_ClientSearchState implements _ClientSearchState {
  const _$_ClientSearchState({required this.term, required this.filter});

  @override
  final String term;
  @override
  final SearchFilter filter;

  @override
  String toString() {
    return 'ClientSearchState(term: $term, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientSearchState &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, term, filter);

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
      required final SearchFilter filter}) = _$_ClientSearchState;

  @override
  String get term;
  @override
  SearchFilter get filter;
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
