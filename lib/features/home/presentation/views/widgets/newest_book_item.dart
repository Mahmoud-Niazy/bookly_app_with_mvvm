import 'package:bookly_app_with_mvvm/core/navigation.dart';
import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:bookly_app_with_mvvm/features/home/data/models/book_model.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/auther_name.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_name.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewestBookItem extends StatelessWidget {
   final BookItemModel book ;

   const NewestBookItem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: InkWell(
        onTap: () {
          navigate(
              route: 'BookDetailsView',
              context: context,
              page:  const BookDetailsView(),
            arguments: {
                'book' :book,
            },
          );
        },
        child: Row(
          children: [
            BookItemImage(image: book.image,),
            SizedBox(
              width: 15.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   BookName(bookName: book.bookName),
                  SizedBox(
                    height: 10.h,
                  ),
                   AuthorName(authorName: book.author),
                  const Expanded(
                    child: SizedBox(
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: AppStyles.textStyle17,
                      ),
                      const Spacer(),
                      // SizedBox(
                      //   width: 30.w,
                      // ),
                      const Rating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
