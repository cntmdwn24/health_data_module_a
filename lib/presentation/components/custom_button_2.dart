import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final bool isOutline;
  final Widget Function() screen;

  const CustomButton2({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.isOutline,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screen()),
        );
      },
      child: Container(
        width: 290,
        height: 45,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            width: isOutline ? 0.001 : 2,
            color: Colors.grey.shade300,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
