import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:bookly_app_with_mvvm/core/utils/words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewestBooksText extends StatelessWidget{
  const NewestBooksText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppWords.newestBooks,
            style: AppStyles.textStyle20!.copyWith(
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}