import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/button.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unfocus(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          children: [
            const SizedBox(height: 200),
            Image.asset(
              !isDarkMode
                  ? "assets/images/logo/logo.png"
                  : "assets/images/logo/logo_dark.png",
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 48),
            Text(
              "Welcome!",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Login to access a catalog of audio & video messages, conferences, books and more resources from Evangelist Dag Heward-Mills",
              // style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            ButtonWidget.icon(
              onTap: () => context.router.push(const PhoneInputRoute()),
              label: "Login with phone number",
              icon: LineAwesomeIcons.phone,
              widthFactor: 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
