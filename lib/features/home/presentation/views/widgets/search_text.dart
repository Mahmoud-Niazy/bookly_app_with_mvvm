import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SearchText extends StatelessWidget{
  const SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Search for any book you want',
      style: AppStyles.textStyle18,
    );
  }
}