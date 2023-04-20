import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletons/skeletons.dart';

/// Books Page
@RoutePage()
class BooksPage extends StatelessWidget {
  const BooksPage({Key? key, required this.collection}) : super(key: key);

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
              onTap: () => context.router.push(EpubRoute(
                  url: dotenv.get("EPUB_URL") +
                      "/$collection/" +
                      "${index + 1}.epubz")),
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
}
