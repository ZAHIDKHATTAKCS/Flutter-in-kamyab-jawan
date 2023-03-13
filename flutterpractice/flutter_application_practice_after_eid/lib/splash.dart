import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
// ignore: unused_import
import 'Secondpage.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "zahidkhttak",
    ),
  );
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/bg.JPG'),
      backgroundColor: Colors.pink,
      duration: 3000,
      nextScreen: const SecondPage(),
      animationDuration: const Duration(seconds: 10),
    );
  }
}
