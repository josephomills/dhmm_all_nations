part of 'books_bloc.dart';

@freezed
class BooksEvent with _$BooksEvent {
  const factory BooksEvent.bookOpened({required String url}) = _BookOpened;
  const factory BooksEvent.booksFetched() = _BooksFetched;
}
