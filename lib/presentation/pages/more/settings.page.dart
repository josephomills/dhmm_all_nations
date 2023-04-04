import 'package:all_nations/application/app/app_bloc.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Settings Page
@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.router.current.meta["title"]),
      ),
      body: BlocBuilder<AppBloc, AppState>(
        bloc: getIt<AppBloc>(),
        builder: (context, state) {
          return ListView(
            // padding: const EdgeInsets.symmetric(vertical: 16),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                title: const Text("Theme mode"),
                tileColor: Theme.of(context).colorScheme.background,
                trailing: SizedBox(
                  width: 270,
                  child: themeModeSwitch(mode: state.themeMode),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Row themeModeSwitch({required ThemeMode mode}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text("Light"),
        Radio<String>(
          value: DarkMode.light.name,
          groupValue: getMode(themeMode: mode).name,
          onChanged: (value) => getIt<AppBloc>().add(AppEvent.themeModeToggled(
              themeMode: getThemeMode(value: value!))),
        ),
        const Text("Dark"),
        Radio<String>(
          value: DarkMode.dark.name,
          groupValue: getMode(themeMode: mode).name,
          onChanged: (value) => getIt<AppBloc>().add(
            AppEvent.themeModeToggled(themeMode: getThemeMode(value: value!)),
          ),
        ),
        const Text("System"),
        Radio<String>(
          value: DarkMode.system.name,
          groupValue: getMode(themeMode: mode).name,
          onChanged: (value) => getIt<AppBloc>().add(
            AppEvent.themeModeToggled(themeMode: getThemeMode(value: value!)),
          ),
        ),
      ],
    );
  }
}

DarkMode getMode({required ThemeMode themeMode}) {
  switch (themeMode) {
    case ThemeMode.dark:
      return DarkMode.dark;
    case ThemeMode.light:
      return DarkMode.light;
    case ThemeMode.system:
    default:
      return DarkMode.system;
  }
}

ThemeMode getThemeMode({required String value}) {
  switch (value) {
    case "dark":
      return ThemeMode.dark;
    case "light":
      return ThemeMode.light;
    case "system":
    default:
      return ThemeMode.system;
  }
}

enum DarkMode { light, dark, system }
