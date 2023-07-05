import 'package:flutter/material.dart';

class PageTransition extends PageRouteBuilder {
  late Widget page;
  late String route;
   Map? arguments;

  PageTransition({
    required this.page,
     this.arguments,
    required this.route,
  }) : super(
            settings: RouteSettings(
              arguments: arguments,
              name: route,
            ),
            pageBuilder: (context, animation1, animation2) {
              return page;
            },
            transitionsBuilder: (context, animation1, animation2, child) {
              return SlideTransition(
                position: animation1.drive(Tween<Offset>(
                  begin: const Offset(-1, 0),
                  end: const Offset(0, 0),
                )),
                child: child,
              );
            });
}
