part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  const factory SettingsEvent.themeModeToggled({required ThemeMode themeMode}) =
      _ThemeModeToggled;
}
