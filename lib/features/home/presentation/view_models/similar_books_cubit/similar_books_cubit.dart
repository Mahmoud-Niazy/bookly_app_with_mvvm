import 'package:bookly_app_with_mvvm/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit() : super(SimilarBooksInitialState());

  static SimilarBooksCubit get(context) => BlocProvider.of(context);

  fetchSimilarBooks() async {
    var data = await HomeRepoImplementation().fetchSimilarBooks();
    data.fold(
      (failure) => emit(SimilarBooksErrorState(failure.errMessage)),
      (books) => emit(SimilarBooksSuccessfullyState(books)),
    );
  }
}
