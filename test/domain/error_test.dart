import 'package:appointment/domain/common/error.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should be a subclass of Error', () {
    // Arrange
    const message = 'message';
    final sut = CriticalError(message);
    // Act
    // Assert
    expect(sut, isA<Error>());
  });

  test('should return a string containing the message', () {
    // Arrange
    const message = 'message';
    final sut = CriticalError(message);
    // Act
    // Assert
    expect(sut.toString(), contains(message));
  });
}
