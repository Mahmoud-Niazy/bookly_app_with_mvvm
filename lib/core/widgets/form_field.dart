import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label ;
  void Function(String)? onChanged;

    CustomTextFormField({
    super.key,
    required this.controller,
     required this.label,
      this.onChanged,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: label,
      ),
      controller: controller,
      onChanged: onChanged ,
    );
  }
}
