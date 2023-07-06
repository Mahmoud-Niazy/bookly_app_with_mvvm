import 'package:bookly_app_with_mvvm/core/utils/words.dart';
import 'package:bookly_app_with_mvvm/core/url_launcher.dart';
import 'package:flutter/material.dart';
import 'custom_botton_in_book_details.dart';

class FreePreviewInBookDetailsView extends StatelessWidget {
  final String? link;

  const FreePreviewInBookDetailsView({
    super.key,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButtonInBookDetails(
      onPressed: () async {
        launchLink(
          link: link!,
          context: context,
        );
      },
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
