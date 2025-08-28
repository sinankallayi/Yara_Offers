import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/components/my_brochure.dart';
import 'package:ui/models/shop.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = context.watch<Shop>().shop;
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Center(
          child: Container(
            //color: Colors.grey,
            padding: EdgeInsets.all(5),
            height: 550,
            width: 350,
            child: GridView.builder(
              itemCount: offers.length,
              //padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // You can adjust this value as needed
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final offer = offers[index];
                return MyBrochure(offer: offer);
              },
            ),
          ),
        ),
      ),
    );
  }
}
