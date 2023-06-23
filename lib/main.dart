import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/firebase_options.dart';
import 'package:all_nations/infrastructure/services/parse.service.dart';
import 'package:all_nations/presentation/navigation/autoroute.dart';
import 'package:all_nations/presentation/theme/app_theme.dart';
import 'package:all_nations/presentation/widgets/loader.widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Allow the splash screen to stay a little longer until current user has been obtained
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await dotenv.load();

  // Initialize Parse Server (Back4App)
  await initParse();

  // Set glocal localization for Moments to US English
  Moment.setGlobalLocalization(MomentLocalizations.enUS());

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseUIAuth.configureProviders([
    // EmailAuthProvider(),
    // EmailLinkAuthProvider(
    //     actionCodeSettings: ActionCodeSettings(
    //   url: "https://dhmm190.com",
    //   androidInstallApp: true,
    //   handleCodeInApp: true,
    //   androidMinimumVersion: "24",
    //   androidPackageName: dotenv.get("ANDROID_PACKAGE_NAME"),
    //   iOSBundleId: dotenv.get("IOS_BUNDLE_ID"),
    // )),
    PhoneAuthProvider(),
  ]);

  // Initialise Injectable and GetIt
  initInjectable(Environment.prod);

  runApp(AllNations());
}

class AllNations extends StatelessWidget {
  AllNations({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      bloc: getIt<AppBloc>(),
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'All Nations',
          themeMode: state.themeMode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, widget) => Stack(
            children: [
              ResponsiveWrapper.builder(
                BouncingScrollWrapper.builder(context, widget!),
                defaultScale: true,
              ),
              if (state.isLoading) const LoaderWidget(),
            ],
          ),
          locale: const Locale('en'),
          supportedLocales: getSupportedLocales,
          localizationsDelegates: const [
            CountryLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }

  List<Locale> get getSupportedLocales => [
        const Locale("af"),
        const Locale("am"),
        const Locale("ar"),
        const Locale("az"),
        const Locale("be"),
        const Locale("bg"),
        const Locale("bn"),
        const Locale("bs"),
        const Locale("ca"),
        const Locale("cs"),
        const Locale("da"),
        const Locale("de"),
        const Locale("el"),
        const Locale("en"),
        const Locale("es"),
        const Locale("et"),
        const Locale("fa"),
        const Locale("fi"),
        const Locale("fr"),
        const Locale("gl"),
        const Locale("ha"),
        const Locale("he"),
        const Locale("hi"),
        const Locale("hr"),
        const Locale("hu"),
        const Locale("hy"),
        const Locale("id"),
        const Locale("is"),
        const Locale("it"),
        const Locale("ja"),
        const Locale("ka"),
        const Locale("kk"),
        const Locale("km"),
        const Locale("ko"),
        const Locale("ku"),
        const Locale("ky"),
        const Locale("lt"),
        const Locale("lv"),
        const Locale("mk"),
        const Locale("ml"),
        const Locale("mn"),
        const Locale("ms"),
        const Locale("nb"),
        const Locale("nl"),
        const Locale("nn"),
        const Locale("no"),
        const Locale("pl"),
        const Locale("ps"),
        const Locale("pt"),
        const Locale("ro"),
        const Locale("ru"),
        const Locale("sd"),
        const Locale("sk"),
        const Locale("sl"),
        const Locale("so"),
        const Locale("sq"),
        const Locale("sr"),
        const Locale("sv"),
        const Locale("ta"),
        const Locale("tg"),
        const Locale("th"),
        const Locale("tk"),
        const Locale("tr"),
        const Locale("tt"),
        const Locale("uk"),
        const Locale("ug"),
        const Locale("ur"),
        const Locale("uz"),
        const Locale("vi"),
        const Locale("zh")
      ];
}
