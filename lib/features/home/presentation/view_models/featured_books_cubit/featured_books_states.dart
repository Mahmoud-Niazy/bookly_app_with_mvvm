import '../../../data/models/book_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates{}

class FeaturedBooksLoadingState extends FeaturedBooksStates{}
class FeaturedBooksSuccessfullyState extends FeaturedBooksStates{
   List<BookItemModel>? books ;
   FeaturedBooksSuccessfullyState(this.books);
}
class FeaturedBooksErrorState extends FeaturedBooksStates{
  String? errorMessage ;
  FeaturedBooksErrorState(this.errorMessage);
}