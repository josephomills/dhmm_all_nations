import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/application/donate/donate_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

/// Donate Page
@RoutePage()
class DonatePage extends StatelessWidget implements AutoRouteWrapper {
  const DonatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonateBloc, DonateState>(
      builder: (context, state) {
        return NestedScrollView(
          physics: const BouncingScrollPhysics(),
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [const AppBarWidget()];
          },
          body: ListView(
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            children: [
              Text(
                "God bless you as you give",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                "Give using the PayPal button below or by direct bank transfer to the UK account.",
                // style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              GestureDetector(
                child: Image.asset(
                  "assets/images/logo/paypal-logo.png",
                  height: 70,
                  fit: BoxFit.contain,
                  cacheHeight: 280,
                ),
                onTap: () {
                  launchUrl(Uri.parse(dotenv.get("PAYPAL_URL")));
                },
              ),
              const SizedBox(height: 48),
              Text(
                "OR",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              GestureDetector(
                child: BlocBuilder<AppBloc, AppState>(
                  bloc: getIt<AppBloc>(),
                  builder: (context, state) {
                    return Image.asset(
                      state.themeMode == ThemeMode.dark
                          ? "assets/images/logo/pay-by-bank-app-white.png"
                          : "assets/images/logo/pay-by-bank-app.png",
                      height: 70,
                      fit: BoxFit.contain,
                      cacheHeight: 140,
                    );
                  },
                ),
                onTap: () {
                  // Show popup with bank details
                  showModalBottomSheet(
                      context: context,
                      constraints: const BoxConstraints.expand(height: 300),
                      builder: (_) {
                        return Container(
                          color: Theme.of(context).colorScheme.background,
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              Text(
                                "UK Bank account details",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                "Account Name",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dotenv.get("ACC_NAME"),
                                  ),
                                  // const SizedBox(width: 32),
                                  IconButton(
                                    onPressed: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text: dotenv.get("ACC_NAME")));
                                    },
                                    icon: const Icon(LineAwesomeIcons.copy),
                                  ),
                                ],
                              ),
                              Text(
                                "Account Number",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dotenv.get("ACC_NUMBER"),
                                  ),
                                  // const SizedBox(width: 32),
                                  IconButton(
                                    onPressed: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text: dotenv.get("ACC_NUMBER")));
                                    },
                                    icon: const Icon(LineAwesomeIcons.copy),
                                  ),
                                ],
                              ),
                              Text(
                                "Sort Code",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dotenv.get("SORT_CODE"),
                                  ),
                                  // const SizedBox(width: 32),
                                  IconButton(
                                    onPressed: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text: dotenv.get("SORT_CODE")));
                                    },
                                    icon: const Icon(LineAwesomeIcons.copy),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DonateBloc>(),
      child: this,
    );
  }
}
