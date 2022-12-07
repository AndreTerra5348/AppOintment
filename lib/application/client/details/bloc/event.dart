part of 'bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.loadEmited({required LoadState<Client> state}) =
      _LoadEmited;
  const factory DetailsEvent.editEmited({required EditState state}) =
      _EditEmited;
  const factory DetailsEvent.deleteEmited({required DeleteState state}) =
      _DeleteEmited;
}
