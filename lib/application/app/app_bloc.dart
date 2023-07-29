import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) async {},
        themeModeToggled: (e) {
          // change state variable
          // change variable on disk
          emit(state.copyWith(themeMode: e.themeMode));
        },
        translatedToLanguage: (e) async {
          emit(state.copyWith(
            translateTo: e.translatedTo ?? "en",
            flag: e.translatedTo == "en" ? "us" : e.translatedTo!,
          ));
        },
      );
    });
  }
}
