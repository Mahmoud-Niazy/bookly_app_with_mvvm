import 'package:bookly_app_with_mvvm/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit() : super(NewestBooksInitialState());

  static NewestBooksCubit get(context) => BlocProvider.of<NewestBooksCubit>(context);

  fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var data = await HomeRepoImplementation().fetchNewestBooksBooks();

    data.fold(
      (failure) => emit(NewestBooksErrorState(failure.errMessage)),
      (books) => emit(NewestBooksSuccessfullyState(books)),
    );
  }
}
