import 'dart:async';

import 'package:all_nations/domain/core/config/epub_reader.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'books_event.dart';
part 'books_state.dart';
part 'books_bloc.freezed.dart';

@injectable
class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(BooksState.initial()) {
    on<BooksEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        vocysEpubConfigured: (e) {
          initVocsyEpubViewer(e.context);
        },
      );
    });
  }
}
