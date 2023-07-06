import 'package:bookly_app_with_mvvm/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/search_cubit/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of<SearchCubit>(context);

  fetchSearchedBooks({
    required String search,
  }) async {
    emit(SearchLoadingState());
    var data =
        await HomeRepoImplementation().fetchSearchedBooks(search: search);
    data.fold(
      (failure) => emit(SearchErrorState(failure.errMessage)),
      (books) => emit(SearchSuccessfullyState(books)),
    );
  }
}
