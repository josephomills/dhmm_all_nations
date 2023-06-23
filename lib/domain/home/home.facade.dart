import 'package:all_nations/domain/home/home.failure.dart';
import 'package:all_nations/infrastructure/home/home_carousel.object.dart';
import 'package:all_nations/infrastructure/home/post.object.dart';
import 'package:dartz/dartz.dart';

abstract class HomeFacade {
  Future<Either<HomeFailure, List<HomeCarouselObject>>> getCarouselImages();
  Future<Either<HomeFailure, List<PostObject>>> getPosts({int? numPosts});
}
