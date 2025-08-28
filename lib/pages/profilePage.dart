import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/components/my_brochure.dart';
import 'package:ui/models/shop.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = context.watch<Shop>().shop;
    return SafeArea(
      //top: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            //padding: EdgeInsets.zero,
            //padding: const EdgeInsets.all(16),
            itemCount: offers.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Number of columns
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              //childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return MyBrochure(offer: offers[index]);
            },
          ),
        ),
      ),
    );
  }
}
