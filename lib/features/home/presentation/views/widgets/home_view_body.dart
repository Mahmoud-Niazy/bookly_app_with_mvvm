import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/list_of_featured_books.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/list_of_newest_books.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/newest_books_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomAppBar(),
              const ListOfFeaturedBooks(),
              SizedBox(
                height: 15.h,
              ),
              const NewestBooksText(),
              SizedBox(
                height: 15.h,
              ),
              const ListOfNewestBooks()
            ],
          ),
        ),
        // const SliverToBoxAdapter(
        //   child: ListOfNewestBooks(),
        // ),
      ],
    );
  }
}
