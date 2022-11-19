import 'package:appointment/application/common/pagination.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Pagination", () {
    group("Pagination.empty() values - ", () {
      test("Initial page should be 0", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.page, 0);
      });
      test("Initial pageCount should be 0", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.pageCount, 0);
      });
      test("Initial itensPerPage should be 10", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.itensPerPage, 10);
      });
      test("Initial items should be empty", () {
        // Arrange
        final sut = Pagination.empty();
        // Act
        // Assert
        expect(sut.items, isEmpty);
      });
    });
  });
}
