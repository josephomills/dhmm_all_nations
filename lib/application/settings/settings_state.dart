part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({required ThemeMode themeMode}) = _SettingsState;

  factory SettingsState.initial() =>
      const SettingsState(themeMode: ThemeMode.system);
}
