import 'package:bookly_app_with_mvvm/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfNewestBooks extends StatelessWidget {
  const ListOfNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){
        return const NewestBookItem();
      },
      separatorBuilder: (context,index){
        return SizedBox(
          height: 15.h,
        );
      },
      itemCount: 15,
    );
  }
}
