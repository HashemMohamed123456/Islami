import 'package:flutter/material.dart';
import 'package:islami/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 30
          ),
          unselectedIconTheme: IconThemeData(
            size: 20
          )
        ),
      scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffB7935F),
        primary: const Color(0xffB7935F),
        secondary: const Color(0xffB7935F).withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.black
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

