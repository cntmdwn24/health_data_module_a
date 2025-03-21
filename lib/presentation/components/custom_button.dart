import 'package:flutter/material.dart';
import 'package:health_data_module_a/common/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget Function() screen;

  const CustomButton({super.key, required this.text, required this.screen});

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
        alignment: Alignment.center,
        width: 340,
        height: 50,
        decoration: BoxDecoration(
          color: signInScreenInButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
