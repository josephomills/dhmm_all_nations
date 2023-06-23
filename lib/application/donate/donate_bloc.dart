import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'donate_event.dart';
part 'donate_state.dart';
part 'donate_bloc.freezed.dart';

@injectable
class DonateBloc extends Bloc<DonateEvent, DonateState> {
  DonateBloc() : super(DonateState.initial()) {
    on<DonateEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) async {},
      );
    });
  }
}
