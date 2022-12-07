part of 'bloc.dart';

@freezed
class DetailsEvent<T extends EntityMixin> with _$DetailsEvent<T> {
  const factory DetailsEvent.loadEmited({required LoadState<T> state}) =
      _LoadEmited<T>;
  const factory DetailsEvent.editEmited({required EditState state}) =
      _EditEmited<T>;
  const factory DetailsEvent.deleteEmited({required DeleteState state}) =
      _DeleteEmited<T>;
}
