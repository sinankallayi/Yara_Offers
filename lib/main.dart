import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/index.dart';
import 'package:ui/models/shop.dart';
import 'package:ui/pages/homePage.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Shop(), child: MyApp()));
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
      routes: {
        '/index': (context) => IndexPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
