import 'dart:async';

import 'package:all_nations/domain/conference/conference.facade.dart';
import 'package:all_nations/domain/conference/conference.failure.dart';
import 'package:all_nations/infrastructure/conference/conference.object.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'conference_event.dart';
part 'conference_state.dart';
part 'conference_bloc.freezed.dart';

@injectable
class ConferenceBloc extends Bloc<ConferenceEvent, ConferenceState> {
  final ConferenceFacade _conferenceFacade;

  ConferenceBloc(this._conferenceFacade) : super(ConferenceState.initial()) {
    on<ConferenceEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) async {
          emit(state.copyWith(isLoading: true));
          // load all conferences
          final failureOrConferences =
              await _conferenceFacade.getAllConferences();

          emit(state.copyWith(
            isLoading: false,
            failureOrConferencesOption: some(failureOrConferences),
          ));
        },
      );
    });
  }
}
