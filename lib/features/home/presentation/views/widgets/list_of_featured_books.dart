import 'package:bookly_app_with_mvvm/core/widgets/custom_error.dart';
import 'package:bookly_app_with_mvvm/core/widgets/loading.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/view_models/featured_books_cubit/featured_books_states.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfFeaturedBooks extends StatelessWidget {
  const ListOfFeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> FeaturedBooksCubit()..featchFeaturedBooks(),
      child: BlocBuilder<FeaturedBooksCubit,FeaturedBooksStates>(
        builder: (context,state){
          if(state is FeaturedBooksSuccessfullyState){
            return SizedBox(
              height: MediaQuery.of(context).size.height * .22.h,
              child: ListView.builder(
                physics:  const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => BookItemImage(image:state.books![index].image),
              ),
            );
          }
          if(state is FeaturedBooksErrorState){
            return CustomError(errorMessage: state.errorMessage!);
          }
          else{
            return Loading();
          }
        },
      ),
    );
  }
}
