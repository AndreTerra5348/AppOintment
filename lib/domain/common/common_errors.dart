/// Common errors for the domain layer.

/// A critical error that should never happen.
class CriticalError extends Error {
  final String _message;

  CriticalError(this._message);

  @override
  String toString() {
    return Error.safeToString('Critical Error: $_message');
  }
}
