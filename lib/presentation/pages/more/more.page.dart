import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/logout.widget.dart';
import 'package:all_nations/presentation/widgets/more_tile.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

/// More Page
@RoutePage()
class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const NeverScrollableScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: ListView(
        primary: false,
        padding: const EdgeInsets.symmetric(vertical: 0),
        children: [
          MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Profile",
            onTap: () => context.router.push(const ProfileRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.language,
            title: "Language",
            onTap: () => context.router.push(const LanguageRoute()),
            trailing: BlocBuilder<AppBloc, AppState>(
              bloc: getIt<AppBloc>(),
              builder: (context, state) {
                return Image.asset(
                  "flags/${state.flag}.png",
                  package: 'country_code_picker',
                  width: 32,
                );
              },
            ),
          ),
          const SizedBox(height: 32),
          MoreTileWidget(
            icon: LineAwesomeIcons.cog,
            title: "Settings",
            onTap: () => context.router.push(const SettingsRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.alternate_sign_out,
            title: "Logout",
            color: Theme.of(context).colorScheme.error,
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (context) => const LogoutWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
