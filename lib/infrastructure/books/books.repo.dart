import 'package:all_nations/infrastructure/books/book.object.dart';
import 'package:all_nations/domain/books/books.facade.dart';
import 'package:dartz/dartz.dart';
import 'package:all_nations/domain/books/books.failure.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BooksFacade)
class BooksRepo implements BooksFacade {
  @override
  Future<Either<BooksFailure, List<BookObject>>> getAllBooks() async {
    final resp = await BookObject().getAll();
    if (resp.success) {
      return Right(resp.results!.map((e) => e as BookObject).toList());
    }

    return Left(BooksFailure.serverError(message: resp.error!.message));
  }
}
