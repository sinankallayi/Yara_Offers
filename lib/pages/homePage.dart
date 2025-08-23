import 'package:flutter/material.dart';
import 'package:ui/pages/offersPage.dart';
import 'package:ui/widgets/categoriesWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 5,
                left: 8,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Fix alignment
                children: [
                  Text(
                    "OFFERS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OffersPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 6, 63, 20),
                    ),
                    child: Text(
                      "VIEW ALL ->",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CategoriesWidget(), // Use directly, no need for Row
            ),
          ],
        ),
      ),
    );
  }
}
