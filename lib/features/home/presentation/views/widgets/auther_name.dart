import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class AutherName extends StatelessWidget{
  const AutherName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Mahmoud Elsolia ',
      style: AppStyles.textStyle14!.copyWith(
        fontFamily: 'NanumMyeongjo',
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}