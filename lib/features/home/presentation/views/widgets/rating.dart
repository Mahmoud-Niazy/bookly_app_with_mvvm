import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/text_styles.dart';

class Rating extends StatelessWidget{
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 18,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
            '4.9'
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '(2500)',
          style: AppStyles.textStyle15,
        ),
      ],
    );
  }
}