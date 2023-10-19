import 'package:all_nations/application/auth/auth/auth_bloc.dart';
import 'package:all_nations/application/profile/profile_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/button.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' hide AuthState;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DeleteAccountModal extends StatelessWidget {
  const DeleteAccountModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      builder: (context, state) {
        return Container(
          height: 300,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Icon(
                LineAwesomeIcons.alternate_sign_out,
                size: 60,
              ),
              const SizedBox(height: 16),
              Text(
                "Delete Account?",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Are you sure you want to delete your account?\nNB: This action is irreversible.",
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    isLoading: false,
                    label: "Cancel",
                    widthFactor: 0.4,
                    onTap: state.isLoading ? null : () => context.router.pop(),
                  ),
                  const SizedBox(width: 16),
                  ButtonWidget(
                    isLoading: state.isLoading,
                    label: "Delete Accouunt",
                    widthFactor: 0.4,
                    onTap: () async {
                      context
                          .read<ProfileBloc>()
                          .add(const ProfileEvent.deleteAccountConfirmed());
                      await FirebaseUIAuth.signOut(
                        context: context,
                        auth: FirebaseAuth.instance,
                      );
                      // Close bottom sheet & go to login
                      context.router.replaceAll([const LoginRoute()]);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
