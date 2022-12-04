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
mixin _$DetailsEvent<T extends EntityMixin> {
  T get entity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T entity) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T entity)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T entity)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded<T> value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded<T> value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsEventCopyWith<T, DetailsEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<T extends EntityMixin, $Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent<T> value, $Res Function(DetailsEvent<T>) then) =
      _$DetailsEventCopyWithImpl<T, $Res, DetailsEvent<T>>;
  @useResult
  $Res call({T entity});
}

/// @nodoc
class _$DetailsEventCopyWithImpl<T extends EntityMixin, $Res,
    $Val extends DetailsEvent<T>> implements $DetailsEventCopyWith<T, $Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadedCopyWith<T extends EntityMixin, $Res>
    implements $DetailsEventCopyWith<T, $Res> {
  factory _$$_LoadedCopyWith(
          _$_Loaded<T> value, $Res Function(_$_Loaded<T>) then) =
      __$$_LoadedCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T entity});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsEventCopyWithImpl<T, $Res, _$_Loaded<T>>
    implements _$$_LoadedCopyWith<T, $Res> {
  __$$_LoadedCopyWithImpl(
      _$_Loaded<T> _value, $Res Function(_$_Loaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$_Loaded<T>(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Loaded<T extends EntityMixin>
    with DiagnosticableTreeMixin
    implements _Loaded<T> {
  const _$_Loaded({required this.entity});

  @override
  final T entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsEvent<$T>.loaded(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsEvent<$T>.loaded'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded<T> &&
            const DeepCollectionEquality().equals(other.entity, entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<T, _$_Loaded<T>> get copyWith =>
      __$$_LoadedCopyWithImpl<T, _$_Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T entity) loaded,
  }) {
    return loaded(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T entity)? loaded,
  }) {
    return loaded?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T entity)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded<T> value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded<T> value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T extends EntityMixin> implements DetailsEvent<T> {
  const factory _Loaded({required final T entity}) = _$_Loaded<T>;

  @override
  T get entity;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<T, _$_Loaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsState<T extends EntityMixin> {
  Option<T> get optionEntity => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsStateCopyWith<T, DetailsState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<T extends EntityMixin, $Res> {
  factory $DetailsStateCopyWith(
          DetailsState<T> value, $Res Function(DetailsState<T>) then) =
      _$DetailsStateCopyWithImpl<T, $Res, DetailsState<T>>;
  @useResult
  $Res call({Option<T> optionEntity, bool isLoading});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<T extends EntityMixin, $Res,
    $Val extends DetailsState<T>> implements $DetailsStateCopyWith<T, $Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionEntity = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      optionEntity: null == optionEntity
          ? _value.optionEntity
          : optionEntity // ignore: cast_nullable_to_non_nullable
              as Option<T>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailsStateCopyWith<T extends EntityMixin, $Res>
    implements $DetailsStateCopyWith<T, $Res> {
  factory _$$_DetailsStateCopyWith(
          _$_DetailsState<T> value, $Res Function(_$_DetailsState<T>) then) =
      __$$_DetailsStateCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Option<T> optionEntity, bool isLoading});
}

/// @nodoc
class __$$_DetailsStateCopyWithImpl<T extends EntityMixin, $Res>
    extends _$DetailsStateCopyWithImpl<T, $Res, _$_DetailsState<T>>
    implements _$$_DetailsStateCopyWith<T, $Res> {
  __$$_DetailsStateCopyWithImpl(
      _$_DetailsState<T> _value, $Res Function(_$_DetailsState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionEntity = null,
    Object? isLoading = null,
  }) {
    return _then(_$_DetailsState<T>(
      optionEntity: null == optionEntity
          ? _value.optionEntity
          : optionEntity // ignore: cast_nullable_to_non_nullable
              as Option<T>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DetailsState<T extends EntityMixin>
    with DiagnosticableTreeMixin
    implements _DetailsState<T> {
  const _$_DetailsState({required this.optionEntity, required this.isLoading});

  @override
  final Option<T> optionEntity;
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsState<$T>(optionEntity: $optionEntity, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsState<$T>'))
      ..add(DiagnosticsProperty('optionEntity', optionEntity))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsState<T> &&
            (identical(other.optionEntity, optionEntity) ||
                other.optionEntity == optionEntity) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionEntity, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsStateCopyWith<T, _$_DetailsState<T>> get copyWith =>
      __$$_DetailsStateCopyWithImpl<T, _$_DetailsState<T>>(this, _$identity);
}

abstract class _DetailsState<T extends EntityMixin> implements DetailsState<T> {
  const factory _DetailsState(
      {required final Option<T> optionEntity,
      required final bool isLoading}) = _$_DetailsState<T>;

  @override
  Option<T> get optionEntity;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsStateCopyWith<T, _$_DetailsState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
