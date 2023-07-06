import '../../../data/models/book_model.dart';

abstract class SimilarBooksStates{}

class SimilarBooksInitialState extends SimilarBooksStates{}

class SimilarBooksLoadingState extends SimilarBooksStates{}
class SimilarBooksSuccessfullyState extends SimilarBooksStates{
  List<BookItemModel>? books ;
  SimilarBooksSuccessfullyState(this.books);
}
class SimilarBooksErrorState extends SimilarBooksStates{
  String? errorMessage ;
  SimilarBooksErrorState(this.errorMessage);
}