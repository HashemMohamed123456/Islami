import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash:Image.asset('assets/images/logo2.png'), nextScreen: HomeScreen(),backgroundColor: Colors.white,splashIconSize: 250,centered:true,splashTransition: SplashTransition.fadeTransition,duration:5000 ,);
  }
}
