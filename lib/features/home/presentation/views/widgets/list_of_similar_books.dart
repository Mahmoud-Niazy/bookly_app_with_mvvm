import 'package:bookly_app_with_mvvm/core/widgets/custom_error.dart';
import 'package:bookly_app_with_mvvm/core/widgets/loading.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/similar_books_cubit/similar_books_states.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ListOfSimilarBooks extends StatelessWidget {
  const ListOfSimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit()..fetchSimilarBooks(),
      child: BlocBuilder<SimilarBooksCubit,SimilarBooksStates>(
          builder: (context,state) {
            if(state is SimilarBooksSuccessfullyState){
              return ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return  BookItemImage(
                      image: state.books![index].image
                  );
                },
                separatorBuilder: (context,index){
                  return SizedBox(
                    height: 15.h,
                  );
                },
                itemCount: state.books!.length,
              );
            }
            if(state is SimilarBooksErrorState){
              return CustomError(errorMessage: state.errorMessage!);
            }
            else{
              return Loading();
            }
          }
      ),
    );
  }
}
