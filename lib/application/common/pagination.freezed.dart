// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pagination<T_Entity> {
  int get page => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get itensPerPage => throw _privateConstructorUsedError;
  Iterable<T_Entity> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationCopyWith<T_Entity, Pagination<T_Entity>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<T_Entity, $Res> {
  factory $PaginationCopyWith(Pagination<T_Entity> value,
          $Res Function(Pagination<T_Entity>) then) =
      _$PaginationCopyWithImpl<T_Entity, $Res, Pagination<T_Entity>>;
  @useResult
  $Res call(
      {int page, int pageCount, int itensPerPage, Iterable<T_Entity> items});
}

/// @nodoc
class _$PaginationCopyWithImpl<T_Entity, $Res,
        $Val extends Pagination<T_Entity>>
    implements $PaginationCopyWith<T_Entity, $Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageCount = null,
    Object? itensPerPage = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      itensPerPage: null == itensPerPage
          ? _value.itensPerPage
          : itensPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<T_Entity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<T_Entity, $Res>
    implements $PaginationCopyWith<T_Entity, $Res> {
  factory _$$_PaginationCopyWith(_$_Pagination<T_Entity> value,
          $Res Function(_$_Pagination<T_Entity>) then) =
      __$$_PaginationCopyWithImpl<T_Entity, $Res>;
  @override
  @useResult
  $Res call(
      {int page, int pageCount, int itensPerPage, Iterable<T_Entity> items});
}

/// @nodoc
class __$$_PaginationCopyWithImpl<T_Entity, $Res>
    extends _$PaginationCopyWithImpl<T_Entity, $Res, _$_Pagination<T_Entity>>
    implements _$$_PaginationCopyWith<T_Entity, $Res> {
  __$$_PaginationCopyWithImpl(_$_Pagination<T_Entity> _value,
      $Res Function(_$_Pagination<T_Entity>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageCount = null,
    Object? itensPerPage = null,
    Object? items = null,
  }) {
    return _then(_$_Pagination<T_Entity>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      itensPerPage: null == itensPerPage
          ? _value.itensPerPage
          : itensPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Iterable<T_Entity>,
    ));
  }
}

/// @nodoc

class _$_Pagination<T_Entity> implements _Pagination<T_Entity> {
  const _$_Pagination(
      {required this.page,
      required this.pageCount,
      required this.itensPerPage,
      required this.items});

  @override
  final int page;
  @override
  final int pageCount;
  @override
  final int itensPerPage;
  @override
  final Iterable<T_Entity> items;

  @override
  String toString() {
    return 'Pagination<$T_Entity>(page: $page, pageCount: $pageCount, itensPerPage: $itensPerPage, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination<T_Entity> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.itensPerPage, itensPerPage) ||
                other.itensPerPage == itensPerPage) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageCount, itensPerPage,
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationCopyWith<T_Entity, _$_Pagination<T_Entity>> get copyWith =>
      __$$_PaginationCopyWithImpl<T_Entity, _$_Pagination<T_Entity>>(
          this, _$identity);
}

abstract class _Pagination<T_Entity> implements Pagination<T_Entity> {
  const factory _Pagination(
      {required final int page,
      required final int pageCount,
      required final int itensPerPage,
      required final Iterable<T_Entity> items}) = _$_Pagination<T_Entity>;

  @override
  int get page;
  @override
  int get pageCount;
  @override
  int get itensPerPage;
  @override
  Iterable<T_Entity> get items;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<T_Entity, _$_Pagination<T_Entity>> get copyWith =>
      throw _privateConstructorUsedError;
}
