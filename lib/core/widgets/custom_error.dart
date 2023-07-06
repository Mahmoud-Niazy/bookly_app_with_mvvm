import 'package:flutter/material.dart';

class CustomError extends StatelessWidget{
  late String errorMessage ;
  CustomError({
    required this.errorMessage,
});
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
    );
  }
}