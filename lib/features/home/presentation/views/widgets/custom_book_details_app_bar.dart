import 'package:bookly_app_with_mvvm/core/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/icon_button.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            onPressed: () {
              navigatePop(context: context);
            },
            icon: Icons.clear,
            size: 22,
          ),
          // CustomIconButton(
          //   onPressed: () {},
          //   icon: Icons.shopping_cart_outlined,
          //   size: 22,
          // ),
        ],
      ),
    );
  }
}
