import 'package:flutter/material.dart';
import '../../common/colors.dart';

class CustomGenderButton extends StatefulWidget {
  final bool isMan;
  final bool isSelect;

  const CustomGenderButton({
    super.key,
    required this.isMan,
    required this.isSelect,
  });

  @override
  State<CustomGenderButton> createState() => _CustomGenderButtonState();
}

class _CustomGenderButtonState extends State<CustomGenderButton> {
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 145,
        height: 145,
        decoration: BoxDecoration(
          color: textFieldColor,
          border: Border.all(
            color: signInScreenTextColor,
            width: !widget.isSelect ? 0.001 : 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              !widget.isMan ? Icons.woman : Icons.man,
              color: widget.isSelect ? Colors.black : textFieldIconColor,
              size: 90,
            ),
            Text(
              widget.isMan ? 'Male' : 'Female',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
