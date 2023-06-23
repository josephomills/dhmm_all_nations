import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/theme/app_theme.dart';
import 'package:all_nations/presentation/widgets/auth_header_builder.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SMSCodePage extends StatelessWidget {
  const SMSCodePage({
    Key? key,
    required this.phone,
    required this.authAction,
    required this.flowKey,
  }) : super(key: key);

  final String phone;
  final AuthAction? authAction;
  final Object flowKey;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: !isDarkMode ? AppTheme.lightAuth : AppTheme.darkAuth,
      child: SMSCodeInputScreen(
        headerBuilder: authHeaderBuilder,
        flowKey: flowKey,
        action: authAction,
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) async {
            // Store user
            if (!getIt.isRegistered<User>()) {
              getIt.registerSingleton<User>(state.user!);
            }

            // check if registered first
            final failureOrBool = await getIt<AuthFacade>().isRegistered();

            if (failureOrBool.isRight()) {
              final registered = failureOrBool.getOrElse(() => false);
              if (registered) {
                context.router.replaceAll([const IndexRoute()]);
              } else {
                context.router.replaceAll([RegisterRoute()]);
              }
            } else {
              // TODO: Show error and go back to login page
            }
          }),
          AuthStateChangeAction<CredentialLinked>(
            (context, state) async {
              // check if registered first
              final failureOrBool = await getIt<AuthFacade>().isRegistered();

              if (failureOrBool.isRight()) {
                final registered = failureOrBool.getOrElse(() => false);
                if (registered) {
                  context.router.replaceAll([const IndexRoute()]);
                } else {
                  context.router.replaceAll([RegisterRoute()]);
                }
              } else {
                // TODO: Show error and go back to login page
              }
            },
          ),
          // Register a new user
          AuthStateChangeAction<UserCreated>((context, state) {
            // Store user
            if (!getIt.isRegistered<User>()) {
              getIt.registerSingleton<User>(state.credential.user!);
            }
            context.router.replaceAll([RegisterRoute()]);
          }),
        ],
      ),
    );
  }
}
