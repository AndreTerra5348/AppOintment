import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appointment/infrastructure/drift/executor/native_executor.dart'
    as native_db;

void main() {
  test("create should return an instance of LazyDatabase", () {
    // Arrange
    // Act
    final actual = native_db.create();

    // Assert
    expect(actual, isA<LazyDatabase>());
  });

  test("create should return a database with sqlite dialect", () {
    // Arrange
    // Act
    final actual = native_db.create();

    // Assert
    expect(actual.dialect, SqlDialect.sqlite);
  });

  test("opener should return an instance of NativeDatabase", () async {
    // Arrange
    // Act
    final executor = native_db.create();
    final lazydb = executor as LazyDatabase;
    final actual = await lazydb.opener();

    // Assert
    expect(actual, isA<NativeDatabase>());
  });
}
