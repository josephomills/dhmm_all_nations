import 'dart:async';

import 'package:all_nations/domain/core/config/epub_reader.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'collections_event.dart';
part 'collections_state.dart';
part 'collections_bloc.freezed.dart';

@injectable
class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  CollectionsBloc() : super(CollectionsState.initial()) {
    on<CollectionsEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        vocysEpubConfigured: (e) {
          initVocsyEpubViewer(e.context);
        },
      );
    });
  }
}
