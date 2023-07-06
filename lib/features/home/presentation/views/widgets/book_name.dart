import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget {
  final String? bookName;

   const BookName({
    super.key,
    this.bookName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      bookName!,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: AppStyles.textStyle18,
    );
  }
}
