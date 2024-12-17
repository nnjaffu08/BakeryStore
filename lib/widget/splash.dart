import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bakery_shop/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenSize.width * 0.6,
            height: screenSize.width * 0.3,
            child: Lottie.asset('assets/animation/animation_bakery.json'),
          ),
          const SizedBox(height: 20),
          const Text(
            'WAITING',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFA9E3D7),
      nextScreen: LoginPage(),
      duration: 4000,
      splashIconSize: 170,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
