import 'package:auto_route/auto_route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    // final isLoggedIn = await getIt<AuthFacade>().hasUserLoggedIn();
    var isLoggedIn = true;

    // Remove splash
    FlutterNativeSplash.remove();

    if (isLoggedIn) {
      resolver.next();
    } else {
      // router.push(LoginRoute());
    }
  }
}
