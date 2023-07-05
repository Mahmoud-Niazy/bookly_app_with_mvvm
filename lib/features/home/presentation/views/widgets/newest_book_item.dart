import 'package:bookly_app_with_mvvm/core/navigation.dart';
import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/auther_name.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_name.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewestBookItem extends StatelessWidget{
  const NewestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.h,
      child: InkWell(
        onTap: (){
          navigate(route: 'BookDetailsView', context: context, page: const BookDetailsView());
        },
        child: Row(
          children: [
            const BookItemImage(),
            SizedBox(
              width: 15.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BookName(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const AutherName(),
                  SizedBox(
                    height: 15.h,
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