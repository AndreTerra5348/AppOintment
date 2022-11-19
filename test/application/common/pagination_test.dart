import 'package:appointment/application/common/pagination.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Pagination", () {
    group("empty() values - ", () {
      test("Initial limit should be 0", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.limit, 10);
      });
      test("Initial pageCount should be 0", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.offset, 0);
      });

      test("Initial hasReachedMax should be false", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.hasReachedMax, false);
      });
    });

    group("PaginationExtension - ", () {
      test("copyWithNextPage() should increment offset by limit", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        final result = sut.copyWithNextPage();
        // Assert
        expect(result.offset, sut.limit);
      });
      test("copyWithPreviousPage() should decrement offset by limit", () {
        // Arrange
        const offset = 10;
        final sut = Pagination.empty().copyWith(offset: offset);
        // Act
        final result = sut.copyWithPreviousPage();
        // Assert
        expect(result.offset, 0);
      });
      test("copyWithPreviousPage() should not decrement offset below 0", () {
        // Arrange
        final sut = Pagination.empty().copyWith(offset: 5);
        // Act
        final result = sut.copyWithPreviousPage();
        // Assert
        expect(result.offset, 0);
      });
    });
  });
}
