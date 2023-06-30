import 'package:all_nations/application/profile/profile_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/domain/core/util/util.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = getIt<GlobalKey<FormState>>();

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => unfocus(context),
          child: Scaffold(
            appBar: AppBar(
              title: Text(context.router.current.meta["title"]),
              actions: [
                IconButton(
                  onPressed: () => context
                      .read<ProfileBloc>()
                      .add(const ProfileEvent.editingToggled()),
                  icon: Icon(
                    state.isEditing
                        ? LineAwesomeIcons.times
                        : LineAwesomeIcons.alternate_pencil,
                  ),
                ),
                if (state.isEditing)
                  IconButton(
                    onPressed: () => context
                        .read<ProfileBloc>()
                        .add(ProfileEvent.saveButtonPressed(formKey: _formKey)),
                    icon: const Icon(LineAwesomeIcons.save),
                  ),
                const SizedBox(width: 16),
              ],
            ),
            body: Container(),
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>(),
      child: this,
    );
  }
}
