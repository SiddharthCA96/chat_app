import 'package:flutter/material.dart';
import 'package:chatter/utils/colors.dart';

class CustomText  extends StatelessWidget {
  const CustomText({super.key,required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: buttonColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: buttonColor,
            width: 2,
          ),
      ),
    ),
    );
  }
}