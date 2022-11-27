class CriticalError extends Error {
  final String message;

  CriticalError(this.message);

  @override
  String toString() {
    return Error.safeToString('Critical Error: $message');
  }
}
