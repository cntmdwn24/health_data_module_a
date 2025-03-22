import 'package:flutter/material.dart';
import '../screens/sign_up_screen.dart';

final splashProvider = SplashProvider();

class SplashProvider extends ChangeNotifier {
  bool animationLogo = false;
  bool animationSimbol = false;

  void animationSplash(BuildContext context) async {
    animationSimbol = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    animationLogo = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignUpScreen()),
    );
  }
}
