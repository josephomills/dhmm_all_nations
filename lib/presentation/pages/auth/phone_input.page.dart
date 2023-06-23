import 'package:all_nations/domain/core/util/util.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/theme/app_theme.dart';
import 'package:all_nations/presentation/widgets/auth_header_builder.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PhoneInputPage extends StatelessWidget {
  const PhoneInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => unfocus(context),
      child: Theme(
        data: !isDarkMode ? AppTheme.lightAuth : AppTheme.darkAuth,
        child: PhoneInputScreen(
          headerBuilder: authHeaderBuilder,
          actions: [
            SMSCodeRequestedAction(
              (context, action, flowKey, phoneNumber) {
                context.router.push(SMSCodeRoute(
                  phone: phoneNumber,
                  flowKey: flowKey,
                  authAction: action,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
