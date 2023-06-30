import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/bottom_nav.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Index page
@RoutePage()
class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: NavIndex.videos,
      routes: const [
        HomeRoute(),
        ConferencesRoute(),
        BooksRoute(),
        // DonateRoute(),
        MoreRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return const BottomNavWidget();
      },
    );
  }
}

/// Nav index for pages
class NavIndex {
  static const int videos = 0;
  static const int conferences = 1;
  static const int books = 2;
  static const int donate = 3;
  static const int more = 4;
}
