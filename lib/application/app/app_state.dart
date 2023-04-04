part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool isLoading,
    required ThemeMode themeMode,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        isLoading: false,
        themeMode: ThemeMode.system,
      );
}
