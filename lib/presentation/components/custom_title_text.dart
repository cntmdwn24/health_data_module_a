import 'package:flutter/material.dart';
import 'package:health_data_module_a/common/colors.dart';

class CustomTitleText extends StatelessWidget {
  final double padding;
  final String text;

  const CustomTitleText({super.key, required this.padding, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          color: signInScreenInButtonColor,
        ),
      ),
    );
  }
}
