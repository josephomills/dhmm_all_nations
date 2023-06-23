import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    // final isLoggedIn = await getIt<AuthFacade>().hasUserLoggedIn();
    final user = FirebaseAuth.instance.currentUser;
    var isLoggedIn = user != null;
    // var isLoggedIn = false;

    // Remove splash
    FlutterNativeSplash.remove();

    if (isLoggedIn) {
      // Store user
      if (!getIt.isRegistered<User>()) {
        getIt.registerSingleton<User>(user);
      }
      // check if registered first
      final failureOrBool = await getIt<AuthFacade>().isRegistered();
      if (failureOrBool.isRight()) {
        final registered = failureOrBool.getOrElse(() => false);
        if (registered) {
          resolver.next();
        } else {
          router.replaceAll([RegisterRoute()]);
        }
      }
    } else {
      router.push(const LoginRoute());
    }
  }
}
