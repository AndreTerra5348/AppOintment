part of 'bloc.dart';

@freezed
class ClientDetailsEvent with _$ClientDetailsEvent {
  const factory ClientDetailsEvent.loadEmited(
      {required LoadState<Client> state}) = _LoadEmited;
  const factory ClientDetailsEvent.editEmited({required EditState state}) =
      _EditEmited;
  const factory ClientDetailsEvent.deleteEmited({required DeleteState state}) =
      _DeleteEmited;
}
