part of 'create_bloc.dart';

/// Defines [EntityMixin] registration events
@freezed
class CreateEvent<T extends EntityMixin> with _$CreateEvent<T> {
  /// Event to register an [EntityMixin]
  const factory CreateEvent.created({required T entity}) = _Created<T>;
}
