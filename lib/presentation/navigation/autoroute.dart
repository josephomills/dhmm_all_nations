import 'package:all_nations/presentation/navigation/auth_gard.dart';
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
        AutoRoute(page: HomeRoute.page, path: "home"),
        AutoRoute(page: ConferencesRoute.page, path: "conferences"),
        AutoRoute(page: BooksRoute.page, path: "books"),
        AutoRoute(page: DonateRoute.page, path: "donate"),
        AutoRoute(page: MoreRoute.page, path: "more"),
      ],
    ),
    AutoRoute(page: EpubRoute.page, path: "/epub"),
    AutoRoute(page: CollectionRoute.page, path: "/collection"),
    AutoRoute(page: CollectionsRoute.page, path: "/collections"),
    AutoRoute(
      page: SettingsRoute.page,
      path: "/settings",
      meta: const {"title": "Settings"},
    ),
    AutoRoute(page: LoginRoute.page, path: "/login"),
    AutoRoute(page: PhoneInputRoute.page, path: "/phone-input"),
    AutoRoute(page: RegisterRoute.page, path: "/register"),
    AutoRoute(page: SMSCodeRoute.page, path: "/sms-code"),
    AutoRoute(page: VideosRoute.page, path: "/videos"),
    AutoRoute(
      page: ProfileRoute.page,
      path: "/profile",
      meta: const {"title": "Profile"},
    ),
    AutoRoute(page: LanguageRoute.page, path: "/language"),
  ];
}
