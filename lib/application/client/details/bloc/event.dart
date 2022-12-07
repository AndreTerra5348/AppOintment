part of 'bloc.dart';

@freezed
class ClientDetailsEvent with _$ClientDetailsEvent {
  const factory ClientDetailsEvent.detailsEmited(
      {required DetailsState<Client> state}) = _DetailsEmited;
  const factory ClientDetailsEvent.editEmited({required EditState state}) =
      _EditEmited;
  const factory ClientDetailsEvent.deleteEmited({required DeleteState state}) =
      _DeleteEmited;
}
