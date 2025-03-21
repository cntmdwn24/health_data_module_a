import 'package:flutter/material.dart';

import '../providers/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void updateScreen() => setState(() {});

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashProvider.addListener(updateScreen);
      splashProvider.animationSplash(context);
    });
  }

  @override
  void dispose() {
    splashProvider.removeListener(updateScreen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: splashProvider.animationSimbol ? 1 : 0,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                'assets/images/symbol.png',
                width: MediaQuery.sizeOf(context).width * 0.39,
              ),
            ),
            SizedBox(height: 20,),
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: splashProvider.animationLogo ? 1 : 0,
              child: Text(
                'MY Health DATA',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(width: double.infinity),
          ],
        ),
      ),
    );
  }
}
