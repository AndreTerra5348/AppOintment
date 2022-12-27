import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appointment/infrastructure/drift/executor/native_executor.dart'
    as native_db;

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

  // test opener

  test("opener should return an instance of NativeDatabase", () async {
    // Arrange
    // Act
    final actual = await native_db.opener();

    // Assert
    expect(actual, isA<NativeDatabase>());
  });
}
