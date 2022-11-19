import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T_Entity> with _$Pagination {
  const factory Pagination({
    required int page,
    required int pageCount,
    required int itensPerPage,
    required Iterable<T_Entity> items,
  }) = _Pagination;

  factory Pagination.empty() => const Pagination(
        page: 0,
        pageCount: 0,
        itensPerPage: 10,
        items: Iterable.empty(),
      );
}
