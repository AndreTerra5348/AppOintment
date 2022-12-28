/// Drift database provider
export 'unsupported_executor.dart'
    if (dart.library.js) 'web_executor.dart'
    if (dart.library.ffi) 'native_executor.dart';
