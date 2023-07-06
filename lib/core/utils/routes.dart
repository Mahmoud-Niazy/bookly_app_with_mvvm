import 'package:bookly_app_with_mvvm/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app_with_mvvm/features/home/presentation/views/search_view.dart';
import 'package:bookly_app_with_mvvm/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashView(),
    'HomeView': (context) => const HomeView(),
    'BookDetailsView': (context) => const BookDetailsView(),
    'SearchView': (context) => const SearchView(),
  };
}
