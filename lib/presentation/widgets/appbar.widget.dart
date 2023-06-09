import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, this.actions}) : super(key: key);

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: getIt<AppBloc>(),
      builder: (context, state) {
        return SliverAppBar.medium(
          actions: actions,
          snap: true,
          elevation: 0,
          floating: true,
          backgroundColor: state.themeMode == ThemeMode.dark
              ? Theme.of(context).primaryColorDark
              : Theme.of(context).colorScheme.primary,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding: const EdgeInsets.only(top: 16),
            title: Image.asset(
              "assets/images/logo/logo_dark.png",
              fit: BoxFit.cover,
              width: 300,
            ),
            // background: Image.asset(
            //   "assets/images/logo/logo_dark.png",
            //   fit: BoxFit.cover,
            // ),
            collapseMode: CollapseMode.pin,
            expandedTitleScale: 1,
            stretchModes: const [StretchMode.fadeTitle],
          ),
        );
      },
    );
  }
}
