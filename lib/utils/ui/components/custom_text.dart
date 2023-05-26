import 'package:flutter/material.dart';
import 'package:homework_2_animals_list/config/font_size_manager.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize:FontSizeManager.tileFontSize),
    );
  }
}
