part of 'load_bloc.dart';

@freezed
class LoadEvent with _$LoadEvent {
  const factory LoadEvent.loaded({required Uid id}) = _Loaded;
}
