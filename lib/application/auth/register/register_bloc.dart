import 'dart:async';

import 'package:all_nations/domain/auth/auth.facade.dart';
import 'package:all_nations/domain/auth/auth.failure.dart';
import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthFacade _authFacade;

  RegisterBloc(this._authFacade) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        churchChanged: (e) => emit(state.copyWith(church: e.church)),
        countryChanged: (e) => emit(state.copyWith(
          countryCode: e.countryCode,
          showCountryDialog: false,
        )),
        emailChanged: (e) => emit(state.copyWith(email: e.email)),
        firstnameChanged: (e) => emit(state.copyWith(firstname: e.firstname)),
        lastnameChanged: (e) => emit(state.copyWith(lastname: e.lastname)),
        registerButtonPressed: (e) async {
          // validate form
          final passedValidation = e.formKey.currentState!.validate();
          if (passedValidation) {
            // Start loading
            emit(state.copyWith(
              isLoading: true,
              failureOrSuccessOption: none(),
            ));

            // Register
            final failureOrSuccessOption = await _authFacade.register(details: {
              "firstname": state.firstname,
              "lastname": state.lastname,
              "email": state.email,
              "church": state.church,
              "country": state.countryCode.name!,
            });

            emit(
              state.copyWith(
                isLoading: false,
                validateFields: false,
                failureOrSuccessOption: some(failureOrSuccessOption),
              ),
            );
          } else {
            // Failed validation
            emit(
              state.copyWith(
                isLoading: false,
                validateFields: true,
                failureOrSuccessOption: none(),
              ),
            );
          }
        },
        countryDialogToggled: (e) =>
            emit(state.copyWith(showCountryDialog: !state.showCountryDialog)),
      );
    });
  }
}
