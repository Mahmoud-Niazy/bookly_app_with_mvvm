import 'package:bookly_app_with_mvvm/core/utils/words.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/custom_botton_in_book_details.dart';
import 'package:flutter/material.dart';

class PriceInBookDetailsView extends StatelessWidget {
  const PriceInBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonInBookDetails(
      text: AppWords.free,
      border: const BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      color: Colors.white,
      textColor: Colors.black,
    );
  }
}
