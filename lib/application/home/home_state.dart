part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required Option<Either<HomeFailure, List<HomeCarouselObject>>>
        failureOrCarouselObjectsOption,
    required Option<Either<HomeFailure, List<PostObject>>> failureOrPostsOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        failureOrCarouselObjectsOption: none(),
        failureOrPostsOption: none(),
      );
}
