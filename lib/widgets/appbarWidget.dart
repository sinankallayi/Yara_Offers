import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "YARA",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 6, 63, 20),
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          // Handle menu button press
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.location_on, color: Colors.white),
          onPressed: () {
            // Handle settings button press
          },
        ),
      ],
    );
  }
}
