import 'dart:async';

import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:all_nations/domain/core/config/injectable.dart';
import 'package:all_nations/infrastructure/auth/user.model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthFacade _authFacade;

  ProfileBloc(this._authFacade) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) async {
          emit(state.copyWith(
            validateFields: false,
            isLoading: false,
            updatedOption: none(),
            firstname: state.user.firstname,
            lastname: state.user.lastname,
            countryCode: state.user.country,
            church: state.user.church,
            email: state.user.email,
          ));
        },
        editingToggled: (e) =>
            emit(state.copyWith(isEditing: !state.isEditing)),
        saveButtonPressed: (e) async {
          // save profile
          // Validate user input
          final passedValidation = e.formKey.currentState!.validate();
          if (passedValidation) {
            emit(state.copyWith(
              updatedOption: none(),
              isLoading: true,
            ));

            final updatedUser = getIt<UserModel>().copyWith(
              church: state.church,
              country: state.countryCode,
              email: state.email,
              firstname: state.firstname,
              lastname: state.lastname,
            );

            final failureOrUnit =
                await _authFacade.updateUser(updatedUser: updatedUser);

            failureOrUnit.fold((failure) {
              emit(state.copyWith(
                updatedOption: const None(),
                isLoading: false,
              ));
            }, (unit) {
              emit(state.copyWith(
                updatedOption: const None(),
                isLoading: false,
                user: updatedUser,
              ));
            });
          } else {
            emit(state.copyWith(
              validateFields: true,
              isLoading: false,
              updatedOption: none(),
            ));
          }
        },
        churchChanged: (e) => emit(
            state.copyWith(church: e.church, updatedOption: const Some(true))),
        countryChanged: (e) => emit(state.copyWith(
          countryCode: e.countryCode,
          // showCountryDialog: false,
        )),
        emailChanged: (e) => emit(
            state.copyWith(email: e.email, updatedOption: const Some(true))),
        firstnameChanged: (e) => emit(state.copyWith(
            firstname: e.firstname, updatedOption: const Some(true))),
        lastnameChanged: (e) => emit(state.copyWith(
            lastname: e.lastname, updatedOption: const Some(true))),
        countryDialogToggled: (e) =>
            emit(state.copyWith(showCountryDialog: !state.showCountryDialog)),
        deleteAccountConfirmed: (e) async {
          emit(state.copyWith(isLoading: true));
          final failureOrUnit = await _authFacade.deleteCurrentUser();
          failureOrUnit.fold(
            (failure) {
              emit(state.copyWith(
                isLoading: false,
                deleteFailureOption: some(failure),
              ));
            },
            (unit) => emit(state.copyWith(
              isLoading: false,
            )),
          );
        },
      );
    });
  }
}
