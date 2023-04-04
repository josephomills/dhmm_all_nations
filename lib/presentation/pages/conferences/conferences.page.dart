import 'package:all_nations/presentation/widgets/appbar.widget.dart';
import 'package:all_nations/presentation/widgets/empty_state.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Conferences Page
@RoutePage()
class ConferencesPage extends StatelessWidget {
  const ConferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [const AppBarWidget()];
      },
      body: const EmptyStateWidget(
        asset: "assets/images/illustrations/undraw_conference_call.png",
        text: "Coming soon..",
      ),
    );
  }
}
