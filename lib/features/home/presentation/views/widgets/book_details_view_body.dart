import 'package:bookly_app_with_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/auther_name.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/free_preview_in_book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/price_in_book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/similar_books_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_name.dart';
import 'custom_book_details_app_bar.dart';
import 'list_of_similar_books.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookItemModel? book;

  const BookDetailsViewBody({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3.h,
                child: BookItemImage(image: book!.image),
              ),
              SizedBox(
                height: 20.h,
              ),
               BookName(bookName: book!.bookName),
              SizedBox(
                height: 7.h,
              ),
               AuthorName(authorName: book!.author),
              SizedBox(
                height: 7.h,
              ),
              const Rating(),
              SizedBox(
                height: 20.h,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PriceInBookDetailsView(),
                  FreePreviewInBookDetailsView(
                    link: book!.previewUrl,
                  ),
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
                child: const ListOfSimilarBooks(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
