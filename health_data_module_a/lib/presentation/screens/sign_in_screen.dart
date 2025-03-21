import 'package:flutter/material.dart';
import 'package:health_data_module_a/common/colors.dart';
import 'package:health_data_module_a/presentation/screens/main_screen.dart';
import 'package:health_data_module_a/presentation/screens/profile_and_target_screen.dart';
import 'package:health_data_module_a/presentation/screens/sign_up_screen.dart';
import 'package:health_data_module_a/presentation/screens/splash_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_button_2.dart';
import '../components/custom_text_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(color: Colors.black),
                child: Center(
                  child: Text(
                    'My Health Data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Image.asset(
                'assets/images/symbol.png',
                width: MediaQuery.sizeOf(context).width * 0.4,
              ),
              SizedBox(height: 30),
              Text(
                'Please enter your information.',
                style: TextStyle(
                  color: signInScreenTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              CustomTextField(
                icon: Icons.person,
                hint: 'Username',
                suffixText: '',
              ),
              SizedBox(height: 10),
              CustomTextField(
                icon: Icons.lock,
                hint: 'Password',
                suffixText: '',
              ),
              SizedBox(height: 20),
              CustomButton(text: 'Sign In', screen: () => MainScreen()),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(color: textFieldColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton2(
                      text: 'Sign Up',
                      textColor: Colors.white,
                      buttonColor: Colors.black,
                      isOutline: true,
                      screen: () => SignUpScreen(),
                    ),
                    SizedBox(height: 15),
                    CustomButton2(
                      text: 'Password Reset',
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      isOutline: false,
                      screen: () => SplashScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
