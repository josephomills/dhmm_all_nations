import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/navigation/autoroute.dart';
import 'package:all_nations/presentation/theme/app_theme.dart';
import 'package:all_nations/presentation/widgets/loader.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
  // await initParse();

  // Set glocal localization for Moments to US English
  Moment.setGlobalLocalization(MomentLocalizations.enUS());

  // Initialise Injectable and GetIt
  initInjectable(Environment.prod);

  runApp(AllNations());
}

class AllNations extends StatelessWidget {
  AllNations({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
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
          title: 'DHMM All Nations',
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
        );
      },
    );
  }
}
