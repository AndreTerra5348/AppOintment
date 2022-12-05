part of 'bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.loaded({required Uid id}) = _Loaded;
}
