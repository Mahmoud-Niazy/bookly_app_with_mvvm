import 'package:bookly_app_with_mvvm/core/widgets/custom_error.dart';
import 'package:bookly_app_with_mvvm/core/widgets/loading.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/newest_books_cubit/newest_books_states.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfNewestBooks extends StatelessWidget {
  const ListOfNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewestBooksCubit()..fetchNewestBooks(),
      child: BlocBuilder<NewestBooksCubit,NewestBooksStates>(
        builder: (context,state) {
          if(state is NewestBooksSuccessfullyState){
            return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index){
                return  NewestBookItem(
                  book: state.books![index],
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
          if(state is NewestBooksErrorState){
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
