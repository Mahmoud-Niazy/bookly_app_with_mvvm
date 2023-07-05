import 'package:bookly_app_with_mvvm/core/utils/words.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  final AnimationController controller;
  final Animation<Offset> slideAnimation;

  const SlidingText({
    required this.controller,
    required this.slideAnimation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, widget) {
        return SlideTransition(
          position: slideAnimation,
          child: Text(
            AppWords.readFreeBooks,
            textAlign: TextAlign.center,
            // style: AppStyles.textStyle14,
          ),
        );
      },
    );
  }
}
