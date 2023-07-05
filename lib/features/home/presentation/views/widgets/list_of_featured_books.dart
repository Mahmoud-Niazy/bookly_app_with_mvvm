import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/book_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfFeaturedBooks extends StatelessWidget {
  const ListOfFeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .22.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const BookItemImage(),
      ),
    );
  }
}
