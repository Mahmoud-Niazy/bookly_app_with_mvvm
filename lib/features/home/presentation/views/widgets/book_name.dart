import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookName extends StatelessWidget{
  const BookName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Mahmoud Niazy Maher Elsolia ',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: AppStyles.textStyle18,
    );
  }
}