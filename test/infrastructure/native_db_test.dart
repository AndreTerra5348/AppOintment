import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appointment/infrastructure/drift/native_db.dart' as native_db;

void main() {
  test("getQueryExecutor should return an instance of LazyDatabase", () {
    // Arrange
    // Act
    final actual = native_db.getQueryExecutor();

    // Assert
    expect(actual, isA<LazyDatabase>());
  });

  test("getQueryExecutor should return a database with sqlite dialect", () {
    // Arrange
    // Act
    final actual = native_db.getQueryExecutor();

    // Assert
    (actual as LazyDatabase).opener;
    expect(actual.dialect, SqlDialect.sqlite);
  });
}
