import 'package:bookly_app_with_mvvm/core/api_services/api_services.dart';
import 'package:bookly_app_with_mvvm/core/errors/failure.dart';
import 'package:bookly_app_with_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_app_with_mvvm/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation extends HomeRepo {
  @override
  Future<Either<Failure, List<BookItemModel>>> fetchNewestBooksBooks() async{
    try{
      List<BookItemModel> books = [] ;

      var data =await ApiServices.getData(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject: computer science'
        // endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming',
      );
      for (var book in data['items']){
        books.add(BookItemModel.fromJson(book));
      }
      return right (books) ;
    }
    catch(error){
      if(error is DioException){
       return left( ServerFailure.fromDioError(error));
      }
      else{
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookItemModel>>> fetchFeaturedBooks()async {
    try{
      List<BookItemModel> books = [] ;

      var data = await ApiServices.getData(
        endPoint: 'volumes?q=subject:books',
      );
      for (var book in data['items']){
        books.add(BookItemModel.fromJson(book));
      }
      return right (books) ;
    }
    catch(error){
      if(error is DioException){
        return left( ServerFailure.fromDioError(error));
      }
      else{
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookItemModel>>> fetchSimilarBooks() async{
    try{
      List<BookItemModel> books = [] ;

      var data = await ApiServices.getData(
        endPoint: "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming"
        // endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=relevance&category=All',
      );
      for (var book in data['items']){
        books.add(BookItemModel.fromJson(book));
      }
      return right (books) ;
    }
    catch(error){
      if(error is DioException){
        return left( ServerFailure.fromDioError(error));
      }
      else{
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookItemModel>>> fetchSearchedBooks({
    required String search
}) async{
    try{
      List<BookItemModel> books = [] ;

      var data = await ApiServices.getData(
          endPoint: "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$search"
        // endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=relevance&category=All',
      );
      for (var book in data['items']){
        books.add(BookItemModel.fromJson(book));
      }
      return right (books) ;
    }
    catch(error){
      if(error is DioException){
        return left( ServerFailure.fromDioError(error));
      }
      else{
        return left(ServerFailure(error.toString()));
      }
    }
  }
}
