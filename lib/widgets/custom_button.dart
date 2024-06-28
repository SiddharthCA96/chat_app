import 'package:flutter/material.dart';
import 'package:chatter/utils/colors.dart';
class CustomButton extends StatelessWidget{
  const CustomButton({super.key,required this.onTap,required this.text});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      backgroundColor: secondaryBackgroundColor ,
      minimumSize: const Size(double.infinity, 50),
      //padding:const EdgeInsets.all(10),
      ),
      onPressed: onTap,
      child: Text(
        text,
      ),
    );
  }
}