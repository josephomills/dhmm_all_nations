import 'package:all_nations/application/books/collection/collection_bloc.dart';
import 'package:all_nations/domain/core/config/epub_reader.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletons/skeletons.dart';

/// Collection Page
@RoutePage()
class CollectionPage extends StatelessWidget implements AutoRouteWrapper {
  const CollectionPage({Key? key, required this.collection}) : super(key: key);

  final int collection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [const AppBarWidget()];
        },
        body: GridView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                final url = dotenv.get("EPUB_URL") +
                    "/$collection/" +
                    "${index + 1}.epub";
                initVocsyEpubViewer(context);
                context
                    .read<CollectionBloc>()
                    .add(CollectionEvent.bookOpened(url: url));

                // context.router.push(
                //   EpubRoute(
                //       url: dotenv.get("EPUB_URL") +
                //           "/$collection/" +
                //           "${index + 1}.epub"),
                // );
              },
              child: CachedNetworkImage(
                imageUrl: dotenv.get("COVER_URL") +
                    "/$collection/" +
                    "${index + 1}.jpg",
                progressIndicatorBuilder: (context, url, progress) {
                  return const SizedBox(
                    width: 100,
                    height: 250,
                    child: SkeletonAvatar(
                      style: SkeletonAvatarStyle(),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return Container(
                    color: Colors.orange,
                    width: 100,
                    height: 250,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CollectionBloc>(),
      child: this,
    );
  }
}
