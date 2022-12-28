part of 'load_bloc.dart';

/// Defines [EntityMixin] loading events
@freezed
class LoadEvent with _$LoadEvent {
  /// Event to load an [EntityMixin]
  const factory LoadEvent.loaded({required Uid id}) = _Loaded;
}
