import 'package:appointment/application/common/pagination.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Pagination", () {
    group("Pagination.empty() values - ", () {
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
    });
  });
}
