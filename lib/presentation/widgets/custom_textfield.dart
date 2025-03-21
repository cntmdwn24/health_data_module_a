import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String iconName;

  const CustomTextfield({super.key, required this.iconName});

  IconData? _getIconData(String name) {
    Map<String, IconData> icons = {
      'person': Icons.person,
      'badge': Icons.badge_outlined,
      'lock': Icons.lock,
      'lockr_reset': Icons.lock_reset_outlined,
    };

    return icons[name] ?? Icons.help;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey,
          hintText: 'asdf',
          prefixIcon: Icon(_getIconData(iconName)),
        ),
      ),
    );
  }
}
