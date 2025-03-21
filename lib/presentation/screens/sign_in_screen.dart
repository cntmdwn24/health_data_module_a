import 'package:flutter/material.dart';
import 'package:health_module_a/presentation/widgets/custom_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          children: [
            CustomTextfield(iconName: 'lock',),
            CustomTextfield(iconName: 'lock',),

          ],
        ),
      ),
    );
  }
}
