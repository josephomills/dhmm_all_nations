import 'package:all_nations/application/books/books/books_bloc.dart';
import 'package:all_nations/infrastructure/books/book.object.dart';
import 'package:all_nations/domain/core/config/epub_reader.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/loader.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:skeletons/skeletons.dart';

/// Books Page
@RoutePage()
class BooksPage extends StatelessWidget implements AutoRouteWrapper {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [const AppBarWidget()];
        },
        body: BlocConsumer<BooksBloc, BooksState>(
          bloc: context.read<BooksBloc>()..add(const BooksEvent.booksFetched()),
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            // return const BooksLiveList();
            final books = state.booksOption
                .getOrElse(() => const Right([]))
                .getOrElse(() => []);

            return Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  clipBehavior: Clip.none,
                  child: Center(
                    child: Wrap(
                      spacing: 24,
                      runSpacing: 24,
                      alignment: WrapAlignment.spaceAround,
                      runAlignment: WrapAlignment.spaceAround,
                      children: [
                        for (BookObject book in books)
                          InkWell(
                            onTap: () {
                              initVocsyEpubViewer(context);
                              context.read<BooksBloc>().add(
                                  BooksEvent.bookOpened(url: book.epub!.url!));
                            },
                            child: CachedNetworkImage(
                              width: 180,
                              height: 283,
                              maxWidthDiskCache: 360,
                              maxHeightDiskCache: 566,
                              imageUrl: book.cover!.url!,
                              imageBuilder: (context, imageProvider) {
                                return Stack(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.transparent,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black54,
                                            blurRadius: 5,
                                            blurStyle: BlurStyle.outer,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 8,
                                      right: 16,
                                      child: FutureBuilder(
                                        initialData: null,
                                        future:
                                            downloaded(url: book.epub!.url!),
                                        builder: (context, snapshot) {
                                          return CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            child: Icon(
                                              snapshot.hasData
                                                  ? snapshot.data!
                                                      ? LineAwesomeIcons.check
                                                      : LineAwesomeIcons
                                                          .alternate_cloud_download
                                                  : LineAwesomeIcons
                                                      .exclamation_triangle,
                                              size: 20,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                              placeholder: (context, url) => skeletonCover(),
                              errorWidget: (context, url, error) =>
                                  errorWidget(context),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                // GridView.builder(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                //   primary: false,
                //   shrinkWrap: true,
                //   itemCount: books.length,
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 4,
                //     mainAxisSpacing: 16,
                //     childAspectRatio: 0.75,
                //   ),
                //   itemBuilder: (context, index) {
                //     return InkWell(
                //       onTap: () {
                //         initVocsyEpubViewer(context);
                //         context.read<BooksBloc>().add(BooksEvent.bookOpened(
                //             url: books[index].epub!.url!));
                //       },
                //       child: CachedNetworkImage(
                //         fit: BoxFit.contain,
                //         maxWidthDiskCache: 360,
                //         maxHeightDiskCache: 566,
                //         imageUrl: books[index].cover!.url!,
                //         imageBuilder: (context, imageProvider) => Container(
                //           width: 180,
                //           height: 283,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(8),
                //               image: DecorationImage(image: imageProvider),
                //               boxShadow: const [
                //                 BoxShadow(
                //                   blurRadius: 8,
                //                   spreadRadius: 2,
                //                   blurStyle: BlurStyle.outer,
                //                 )
                //               ]),
                //         ),
                //         placeholder: (context, url) => skeletonCover(),
                //         errorWidget: (context, url, error) =>
                //             errorWidget(context),
                //       ),
                //     );
                //   },
                // ),
                if (state.isLoading) const LoaderWidget()
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
      create: (context) => getIt<BooksBloc>(),
      child: this,
    );
  }

  Stack skeletonCover({double? progress}) => Stack(
        alignment: Alignment.center,
        children: [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: 283,
              width: 180,
              borderRadius: BorderRadius.circular(4),
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

  Widget errorWidget(BuildContext context) => Card(
        child: Icon(
          LineAwesomeIcons.exclamation_triangle,
          color: Theme.of(context).colorScheme.error,
        ),
      );
}
