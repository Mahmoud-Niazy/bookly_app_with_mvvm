import '../../../data/models/book_model.dart';

abstract class SearchStates {}

class SearchInitialState extends SearchStates{}

class SearchLoadingState extends SearchStates{}
class SearchSuccessfullyState extends SearchStates{
  List<BookItemModel>? books ;
  SearchSuccessfullyState(this.books);
}
class SearchErrorState extends SearchStates{
  String? errorMessage;
  SearchErrorState(this.errorMessage);
}