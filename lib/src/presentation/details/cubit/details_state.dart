part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.loaded({required bool isCompleted}) = _Loaded;
}
