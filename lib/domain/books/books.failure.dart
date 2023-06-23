import 'package:freezed_annotation/freezed_annotation.dart';

part 'books.failure.freezed.dart';

@freezed
abstract class BooksFailure with _$BooksFailure {
  const factory BooksFailure.serverError({String? message}) = _ServerError;
}
