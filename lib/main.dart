import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ui/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/yara logo.png',
        splashIconSize: 100,
        centered: true,
        backgroundColor: Colors.white,
        duration: 1500,
        nextScreen: IndexPage(),
      ),
    );
  }
}
