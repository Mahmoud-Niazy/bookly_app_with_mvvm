import 'package:bookly_app_with_mvvm/core/utils/assets_data.dart';
import 'package:bookly_app_with_mvvm/core/widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
        horizontal: 15.w,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.logo,
          ),
          const Spacer(),
          CustomIconButton(
            onPressed: () {},
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
        ],
      ),
    );
  }
}
