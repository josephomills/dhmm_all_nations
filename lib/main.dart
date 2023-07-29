import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/firebase_options.dart';
import 'package:all_nations/infrastructure/services/b4a/b4a_config.dart';
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

  // await downloadTranslations();

  // Initialise Injectable and GetIt
  initInjectable(Environment.prod);

  runApp(const AllNations());
}

class AllNations extends StatefulWidget {
  const AllNations({super.key});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_AllNationsState>()!.restartApp();
  }

  static List<Locale> get getSupportedLocales => [
        const Locale("en", "GB"),
        const Locale("es", "ES"),
        const Locale("fr", "FR"),
        const Locale("pt", "PT"),
      ];

  @override
  State<AllNations> createState() => _AllNationsState();
}

class _AllNationsState extends State<AllNations> {
  final _appRouter = AppRouter();
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: BlocConsumer<AppBloc, AppState>(
        bloc: getIt<AppBloc>(),
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return FutureBuilder<void>(
              future: initTranslation(state.translateTo),
              builder: (context, snapshot) {
                // handle any errors
                if (snapshot.hasError) {
                  return const LoaderWidget();
                }
                return MaterialApp.router(
                  onGenerateTitle: (context) =>
                      "All Nations (Localized)", // TODO: use this for a localized title
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
                  supportedLocales: AllNations.getSupportedLocales,
                  localizationsDelegates: const [
                    CountryLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  localeResolutionCallback: (locale, supportedLocales) {
                    for (final supportedLocale in supportedLocales) {
                      if (locale!.languageCode ==
                          supportedLocale.languageCode) {
                        // getIt<AppBloc>().add(
                        //   AppEvent.translatedToLanguage(
                        //     translatedTo: supportedLocale.languageCode,
                        //   ),
                        // );
                        return supportedLocale;
                      }
                    }
                    // fall back to first language (English)
                    // getIt<AppBloc>().add(
                    //   AppEvent.translatedToLanguage(
                    //     translatedTo: supportedLocales.first.languageCode,
                    //   ),
                    // );
                    return supportedLocales.first;
                  },
                );
              });
        },
      ),
    );
  }
}
