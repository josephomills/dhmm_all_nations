import 'dart:async';

import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

/// Auth bloc
@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// [AuthFacade] to access auth methods
  final AuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        loggedIn: (e) async {
          // Get current user (from event)
          emit(state.copyWith(currentUserOption: some(e.user)));
        },
        loggedOut: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrUnitOption = await _authFacade.logout();

          emit(state.copyWith(
            currentUserOption: failureOrUnitOption.isRight()
                ? none()
                : state.currentUserOption,
            isLoading: false,
            failureOrUnitOption: some(failureOrUnitOption),
          ));
        },
      );
    });
  }
}
