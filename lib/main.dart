import 'package:bookly_app_with_mvvm/core/utils/colors.dart';
import 'package:bookly_app_with_mvvm/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(context,child) => MaterialApp(
        routes: AppRoutes.routes,
        initialRoute: '/',
        debugShowCheckedModeBanner: false ,
        // home: child,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
      ),
      // child: const SplashView()
    );
  }
}