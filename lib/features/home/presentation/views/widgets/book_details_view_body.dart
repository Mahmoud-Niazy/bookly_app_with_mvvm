import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/auther_name.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/free_preview_in_book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/list_of_featured_books.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/price_in_book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/similar_books_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_name.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3.h,
                child: const BookItemImage(),
              ),
              SizedBox(
                height: 20.h,
              ),
              const BookName(),
              SizedBox(
                height: 7.h,
              ),
              const AutherName(),
              SizedBox(
                height: 7.h,
              ),
              const Rating(),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PriceInBookDetailsView(),
                  FreePreviewInBookDetailsView(),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const SimilarBooksText(),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .25.h,
                child: ListOfFeaturedBooks(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
