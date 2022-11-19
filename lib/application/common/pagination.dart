import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int limit,
    required int offset,
    required bool hasReachedMax,
  }) = _Pagination;

  factory Pagination.empty() => const Pagination(
        limit: 10,
        offset: 0,
        hasReachedMax: false,
      );
}

extension PaginationExtension on Pagination {
  Pagination copyWithNextPage() => copyWith(
        offset: offset + limit,
      );
  Pagination copyWithPreviousPage() {
    final newOffset = offset - limit;
    return copyWith(
      offset: newOffset < 0 ? 0 : newOffset,
      hasReachedMax: false,
    );
  }
}
