import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';

class AuthorName extends StatelessWidget{
  final String? authorName ;
   const AuthorName({super.key,this.authorName});

  @override
  Widget build(BuildContext context) {
    return Text(
      authorName!,
      style: AppStyles.textStyle14!.copyWith(
        fontFamily: 'NanumMyeongjo',
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}