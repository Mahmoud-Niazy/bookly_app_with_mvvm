import 'package:bookly_app_with_mvvm/core/page_transition.dart';
import 'package:flutter/material.dart';

navigate({
  required String route,
  required BuildContext context,
  required Widget page,
  Map? arguments,
}) {
  Navigator.of(context).push(
    PageTransition(
      page: page,
      route: route,
      arguments: arguments,
    ),
  );
}