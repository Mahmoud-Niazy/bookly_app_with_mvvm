import 'package:bookly_app_with_mvvm/core/utils/text_styles.dart';
import 'package:bookly_app_with_mvvm/core/utils/words.dart';
import 'package:flutter/material.dart';

class SimilarBooksText extends StatelessWidget {
  const SimilarBooksText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15
      ),
      child: Row(
        children: [
          Text(
            AppWords.readSimilarBooks,
            style: AppStyles.textStyle20,
          ),
        ],
      ),
    );
  }
}