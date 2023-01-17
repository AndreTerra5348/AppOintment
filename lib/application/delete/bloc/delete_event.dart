part of 'delete_bloc.dart';

/// Defines [EntityMixin] deletion events
@freezed
class DeleteEvent with _$DeleteEvent {
  /// Event to delete an [EntityMixin] by its [Identifier]
  const factory DeleteEvent.deleted({required Identifier id}) = _Deleted;
}
