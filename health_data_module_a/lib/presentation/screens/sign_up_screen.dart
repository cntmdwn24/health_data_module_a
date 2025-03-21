import 'package:flutter/material.dart';
import 'package:health_data_module_a/common/colors.dart';
import 'package:health_data_module_a/presentation/screens/main_screen.dart';
import 'package:health_data_module_a/presentation/screens/profile_and_target_screen.dart';
import 'package:health_data_module_a/presentation/screens/sign_in_screen.dart';
import 'package:health_data_module_a/presentation/screens/splash_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_button_2.dart';
import '../components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: signUpScreenAppbarColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SigninScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Text(
            'Sing Up',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: Text(
                  'Your information,',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(
                icon: Icons.person,
                hint: 'UserID',
                suffixText: '',
              ),
              SizedBox(height: 15),
              CustomTextField(
                icon: Icons.badge_outlined,
                hint: 'Username',
                suffixText: '',
              ),
              SizedBox(height: 15),
              CustomTextField(
                icon: Icons.lock,
                hint: 'Password',
                suffixText: '',
              ),
              SizedBox(height: 15),
              CustomTextField(
                icon: Icons.lock_reset,
                hint: 'Confirm Password',
                suffixText: '',
              ),
              SizedBox(height: 30),
              CustomButton(text: 'Sign Up', screen: () => ProfileAndTargetScreen()),
              SizedBox(height: 55),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(color: textFieldColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton2(
                      text: 'Sign In',
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      isOutline: false,
                      screen: () => SigninScreen(),
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
