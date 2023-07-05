import 'package:bookly_app_with_mvvm/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookItemImage extends StatelessWidget {
  const BookItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
