part of 'books_bloc.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState() = _BooksState;

  factory BooksState.initial() => const BooksState();
}
