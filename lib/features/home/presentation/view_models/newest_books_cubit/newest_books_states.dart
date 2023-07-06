import '../../../data/models/book_model.dart';

abstract class NewestBooksStates{}

class NewestBooksInitialState extends NewestBooksStates{}

class NewestBooksLoadingState extends NewestBooksStates{}
class NewestBooksSuccessfullyState extends NewestBooksStates{
  List<BookItemModel>? books ;
  NewestBooksSuccessfullyState(this.books);
}
class NewestBooksErrorState extends NewestBooksStates{
  String? errorMessage ;
  NewestBooksErrorState(this.errorMessage);
}