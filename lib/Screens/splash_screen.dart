import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 1),
      backgroundColor: const Color.fromARGB(255, 59, 64, 72),
      nextScreen: const HomePage(),
      splash: Column(
        children: [
          Image.asset("assets/images/appicon.png"),
          const Text("Tesla", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
          ),
        ],
      ),
    );
  }
}