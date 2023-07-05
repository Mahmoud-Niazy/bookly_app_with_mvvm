import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/icon_button.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
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
            onPressed: () {},
            icon: Icons.clear,
            size: 22,
          ),
          CustomIconButton(
            onPressed: () {},
            icon: Icons.shopping_cart_outlined,
            size: 22,
          ),
        ],
      ),
    );
  }
}
