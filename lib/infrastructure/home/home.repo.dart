import 'package:all_nations/domain/home/home.facade.dart';
import 'package:dartz/dartz.dart';
import 'package:all_nations/infrastructure/home/post.object.dart';
import 'package:all_nations/infrastructure/home/home_carousel.object.dart';
import 'package:all_nations/domain/home/home.failure.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

@Injectable(as: HomeFacade)
class HomeRepo implements HomeFacade {
  @override
  Future<Either<HomeFailure, List<HomeCarouselObject>>>
      getCarouselImages() async {
    final query = QueryBuilder(HomeCarouselObject())
      ..setLimit(3)
      ..orderByDescending("updatedAt");

    final resp = await query.query();
    if (resp.success) {
      return Right(resp.results!.cast<HomeCarouselObject>());
    }

    return Left(HomeFailure.serverError(message: resp.error!.message));
  }

  @override
  Future<Either<HomeFailure, List<PostObject>>> getPosts(
      {int? numPosts}) async {
    final query = QueryBuilder(PostObject())
      ..setLimit(10)
      ..orderByDescending("updatedAt");

    final resp = await query.query();
    if (resp.success) {
      return Right(resp.results!.cast<PostObject>());
    }

    return Left(HomeFailure.serverError(message: resp.error!.message));
  }
}
