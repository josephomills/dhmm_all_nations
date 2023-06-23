import 'dart:async';

import 'package:all_nations/domain/home/home.facade.dart';
import 'package:all_nations/domain/home/home.failure.dart';
import 'package:all_nations/infrastructure/home/home_carousel.object.dart';
import 'package:all_nations/infrastructure/home/post.object.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeFacade _homeFacade;

  HomeBloc(this._homeFacade) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) async {
          add(const HomeEvent.carouselsFetched());
          add(const HomeEvent.postsFetched());
        },
        postsFetched: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrPosts = await _homeFacade.getPosts();
          emit(state.copyWith(
            isLoading: false,
            failureOrPostsOption: some(failureOrPosts),
          ));
        },
        carouselsFetched: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrCarousels = await _homeFacade.getCarouselImages();
          emit(state.copyWith(
            isLoading: false,
            failureOrCarouselObjectsOption: some(failureOrCarousels),
          ));
        },
        postLiked: (e) {},
      );
    });
  }
}
