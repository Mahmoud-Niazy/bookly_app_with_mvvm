import 'package:bookly_app_with_mvvm/core/utils/words.dart';
import 'package:flutter/material.dart';
import 'custom_botton_in_book_details.dart';

class FreePreviewInBookDetailsView extends StatelessWidget{
  const FreePreviewInBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomButtonInBookDetails(
      text: AppWords.freePreview,
      border: const BorderRadius.only(
        bottomLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      color: Colors.deepOrange,
      textColor: Colors.white,
    );
  }
}