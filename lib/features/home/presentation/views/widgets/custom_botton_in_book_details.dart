import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';

class CustomButtonInBookDetails extends StatelessWidget {
   final String text;
   final BorderRadiusGeometry border;
   final Color color ;
   final Color textColor ;

  const CustomButtonInBookDetails({
    required this.text,
    required this.border,
    required this.color,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.grey,
      child: Container(
        width: 170.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: border,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
        ),
        child: Text(
          text,
          style: AppStyles.textStyle14!.copyWith(
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
