import 'package:all_nations/application/home/home_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/empty_state.widget.dart';
import 'package:all_nations/presentation/widgets/loader.widget.dart';
import 'package:all_nations/presentation/widgets/posts/post.widget.dart';
import 'package:all_nations/presentation/widgets/skeleton_post.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Home Page
@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: RefreshIndicator(
        onRefresh: () async =>
            context.read<HomeBloc>().add(const HomeEvent.started()),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            final posts = state.failureOrPostsOption
                .getOrElse(() => const Right([]))
                .getOrElse(() => []);
            final carouselImages = state.failureOrCarouselObjectsOption
                .getOrElse(() => const Right([]))
                .getOrElse(() => []);

            return Stack(
              children: [
                ListView(
                  primary: true,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 10),
                        autoPlayAnimationDuration: const Duration(seconds: 2),
                      ),
                      items: carouselImages
                          .map(
                            (carousel) => CachedNetworkImage(
                              imageUrl: carousel.image!.url!,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  const SkeletonPostWidget(
                                      width: double.infinity),
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      itemCount: posts.length,
                      itemBuilder: (context, index) {
                        return PostWidget(post: posts[index]);
                      },
                    ),
                    if (!state.isLoading && posts.isEmpty)
                      const EmptyStateWidget(
                        asset:
                            "assets/images/illustrations/undraw_conference_call.png",
                        text: "Please refresh for the latest posts",
                      ),
                  ],
                ),
                if (state.isLoading) const LoaderWidget(),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.started()),
      child: this,
    );
  }
}
