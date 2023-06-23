import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'conference_details_event.dart';
part 'conference_details_state.dart';
part 'conference_details_bloc.freezed.dart';

@injectable
class ConferenceDetailsBloc
    extends Bloc<ConferenceDetailsEvent, ConferenceDetailsState> {
  ConferenceDetailsBloc() : super(ConferenceDetailsState.initial()) {
    on<ConferenceDetailsEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) {},
      );
    });
  }
}
