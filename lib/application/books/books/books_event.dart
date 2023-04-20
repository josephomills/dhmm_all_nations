part of 'books_bloc.dart';

@freezed
class BooksEvent with _$BooksEvent {
  const factory BooksEvent.vocysEpubConfigured(
      {required BuildContext context}) = _VocysEpubConfigured;
}
