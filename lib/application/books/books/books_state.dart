part of 'books_bloc.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState({
    required bool isLoading,
    required Option<Either<BooksFailure, List<BookObject>>> booksOption,
  }) = _BooksState;

  factory BooksState.initial() => BooksState(
        isLoading: false,
        booksOption: none(),
      );
}
