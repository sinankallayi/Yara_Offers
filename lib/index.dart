import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui/pages/homePage.dart';
import 'package:ui/pages/profilePage.dart';
import 'package:ui/pages/scannerPage.dart';
import 'package:ui/pages/searchPage.dart';
import 'package:ui/pages/settingsPage.dart';
import 'package:ui/widgets/appbarWidget.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _index = 0;
  final GlobalKey<CurvedNavigationBarState> _navigationKey = GlobalKey();

  final screens = [
    HomePage(),
    SearchPage(),
    ScannerPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.search, size: 30),
      const Icon(Icons.scanner, size: 30),
      const Icon(Icons.settings, size: 30),
      const Icon(Icons.person, size: 30),
    ];

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarWidget(),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 63, 20),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(
            context,
          ).copyWith(iconTheme: const IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            key: _navigationKey,
            color: const Color.fromARGB(255, 6, 63, 20),
            buttonBackgroundColor: const Color.fromARGB(255, 6, 63, 20),
            height: 60,
            index: _index,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            items: items,
            onTap: (value) => setState(() => _index = value),
          ),
        ),
        body: screens[_index],
      ),
    );
  }
}
