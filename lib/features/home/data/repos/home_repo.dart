import 'package:bookly_app_with_mvvm/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookItemModel>>> fetchNewestBooksBooks();
  Future<Either<Failure,List<BookItemModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookItemModel>>> fetchSimilarBooks();
  Future<Either<Failure,List<BookItemModel>>> fetchSearchedBooks({
    required String search
  });


}