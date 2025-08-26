import 'package:flutter/material.dart';
import 'package:ui/models/offer.dart';

class MyOfferTile extends StatelessWidget {
  final Offer offer;

  const MyOfferTile({super.key, required this.offer});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 122, 187, 134)),
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Image.asset(offer.imagePath),
            ),
          ),

          const SizedBox(height: 25),

          Text(
            offer.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),

          const SizedBox(height: 10),
          Text(
            offer.description,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
