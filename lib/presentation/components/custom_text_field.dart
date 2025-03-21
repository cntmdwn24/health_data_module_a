import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_data_module_a/common/colors.dart';

class CustomTextField extends StatelessWidget {
  final String suffixText;
  final IconData? icon;
  final String hint;
  final String svgName;
  final bool isSvg;
  final bool isPassword;
  final controller;

  const CustomTextField({
    super.key,
    this.icon,
    required this.hint,
    required this.suffixText,
    this.svgName = '',
    this.isSvg = false,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: SizedBox(
        width: 370,
        height: 70,
        child: TextField(
          controller: controller,
          obscureText: isPassword ? true : false,
          decoration: InputDecoration(
            prefixIcon:
                isSvg
                    ? SizedBox(
                      width: 2,
                      height: 2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: SvgPicture.asset('assets/icons/$svgName'),
                      ),
                    )
                    : Icon(icon),
            hintText: hint,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixText: suffixText,
            suffixStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
            hintStyle: TextStyle(
              color: textFieldIconColor,
              fontWeight: FontWeight.w500,
            ),
            fillColor: textFieldColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
