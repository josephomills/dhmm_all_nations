import 'package:all_nations/presentation/navigation/autoroute.gr.dart';
import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/more_tile.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
            onTap: () {},
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
