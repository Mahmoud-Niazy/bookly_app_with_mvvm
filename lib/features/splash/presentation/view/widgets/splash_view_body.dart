import 'package:bookly_app_with_mvvm/core/navigation.dart';
import 'package:bookly_app_with_mvvm/core/utils/assets_data.dart';
import 'package:bookly_app_with_mvvm/core/utils/durations.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/home_view.dart';
import 'package:bookly_app_with_mvvm/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AppAssets.logo),
        SizedBox(
          height: 15.h,
        ),
        SlidingText(controller: controller, slideAnimation: slideAnimation)
      ],
    );
  }

  initSlidingAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: AppDurations.textAnimationDuration,
    );
    slideAnimation = Tween<Offset>(
      begin: Offset(0, 10.h),
      end: const Offset(0, 0),
    ).animate(controller);
    controller.forward();
  }

  navigateToHome() {
    Future.delayed(
      AppDurations.pageTransitionDuration,
        (){
        navigate(route: 'HomeView', context: context, page: const HomeView());
        }
    );
  }
}
