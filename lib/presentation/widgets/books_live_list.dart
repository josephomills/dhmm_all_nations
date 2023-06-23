import 'package:all_nations/application/books/books/books_bloc.dart';
import 'package:all_nations/infrastructure/books/book.object.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:skeletons/skeletons.dart';

class BooksLiveList extends StatelessWidget {
  const BooksLiveList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParseLiveListWidget<BookObject>(
      query: QueryBuilder(BookObject()),
      listenOnAllSubItems: true,
      lazyLoading: false,
      listLoadingElement: skeletonCover(progress: 0.7),
      childBuilder: (context, snapshot) {
        final book = snapshot.loadedData!;
        if (snapshot.failed) {
          return skeletonCover();
        } else if (snapshot.hasData) {
          return InkWell(
            onTap: () {
              print(book.epub!.url!);
              context
                  .read<BooksBloc>()
                  .add(BooksEvent.bookOpened(url: book.epub!.url!));
            },
            child: SizedBox(
              width: 150,
              height: 240,
              child: CachedNetworkImage(
                imageUrl: book.cover!.url!,
                progressIndicatorBuilder: (context, url, progress) =>
                    skeletonCover(progress: progress.progress),
                errorWidget: (context, url, error) => Card(
                  child: Icon(
                    LineAwesomeIcons.exclamation_triangle,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ),
          );
        } else {
          return skeletonCover(progress: 0.7);
        }
      },
    );
  }

  Stack skeletonCover({double? progress}) => Stack(
        children: [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              width: 150,
              height: 240,
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          if (progress != null)
            Positioned(
              bottom: 0,
              left: 0,
              child: LinearProgressIndicator(value: progress, minHeight: 4),
            )
        ],
      );
}
