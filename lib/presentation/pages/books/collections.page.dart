import 'package:all_nations/application/books/collections/collections_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CollectionsPage extends StatelessWidget implements AutoRouteWrapper {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: ListView.builder(
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => context.router.push(BooksRoute(collection: index + 1)),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/collections/${index + 1}.jpg",
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CollectionsBloc>()
        ..add(CollectionsEvent.vocysEpubConfigured(context: context)),
      child: this,
    );
  }
}
