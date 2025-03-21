import 'package:flutter/material.dart';
import 'package:health_data_module_a/presentation/screens/sign_in_screen.dart';

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
    await Future.delayed(const Duration(seconds: 1, milliseconds: 500));

    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => SignInScreen()));
  }
}
