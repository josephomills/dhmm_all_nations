import 'package:all_nations/infrastructure/books/book.object.dart';
import 'package:all_nations/domain/books/books.failure.dart';
import 'package:dartz/dartz.dart';

abstract class BooksFacade {
  Future<Either<BooksFailure, List<BookObject>>> getAllBooks();
}
