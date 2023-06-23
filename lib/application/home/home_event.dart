part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.postsFetched() = _PostsFetched;
  const factory HomeEvent.carouselsFetched() = _CarouselsFetched;
  const factory HomeEvent.postLiked({required String id}) = _PostLiked;
}
