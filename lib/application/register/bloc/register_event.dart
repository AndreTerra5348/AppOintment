part of 'register_bloc.dart';

/// Defines [EntityMixin] registration events
@freezed
class RegisterEvent<T extends EntityMixin> with _$RegisterEvent<T> {
  /// Event to register an [EntityMixin]
  const factory RegisterEvent.registered({required T entity}) = _Registered<T>;
}
