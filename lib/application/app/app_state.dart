part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default("en") String translateTo,
    @Default("gh") String flag,
  }) = _AppState;
}
