import 'package:all_nations/presentation/navigation/auth_gard.core.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: IndexRoute.page,
      guards: [AuthGuard()],
      path: "/",
      children: [
        AutoRoute(page: VideosRoute.page, path: "videos"),
        AutoRoute(page: ConferencesRoute.page, path: "conferences"),
        AutoRoute(page: CollectionsRoute.page, path: "collections"),
        AutoRoute(page: DonateRoute.page, path: "donate"),
        AutoRoute(page: MoreRoute.page, path: "more"),
      ],
    ),
    AutoRoute(page: BooksRoute.page, path: "/books"),
    AutoRoute(page: EpubRoute.page, path: "/epub"),
    AutoRoute(
      page: SettingsRoute.page,
      path: "/settings",
      meta: const {"title": "Settings"},
    ),
  ];
}
