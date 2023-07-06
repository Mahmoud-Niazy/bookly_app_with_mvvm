import 'package:bookly_app_with_mvvm/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit() : super(FeaturedBooksInitialState());

  static FeaturedBooksCubit get(context) => BlocProvider.of<FeaturedBooksCubit>(context);

  featchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await HomeRepoImplementation().fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksErrorState(failure.errMessage)),
      (books) => emit(FeaturedBooksSuccessfullyState(books)),
    );
  }
}
