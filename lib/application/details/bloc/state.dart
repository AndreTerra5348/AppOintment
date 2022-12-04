part of 'bloc.dart';

@freezed
class DetailsState<T extends EntityMixin> with _$DetailsState<T> {
  const factory DetailsState({
    required Option<T> optionEntity,
    required bool isLoading,
  }) = _DetailsState;

  factory DetailsState.loading() => DetailsState(
        optionEntity: none(),
        isLoading: true,
      );
  factory DetailsState.loaded({required T entity}) => DetailsState(
        optionEntity: some(entity),
        isLoading: false,
      );
}
