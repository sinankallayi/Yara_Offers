import 'package:flutter/material.dart';
import 'package:ui/models/offer.dart';

class MyBrochure extends StatelessWidget {
  final Offer offer;
  const MyBrochure({super.key, required this.offer});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            //decoration: BoxDecoration(border: Border.all(width: 1)),
            color: Colors.grey[100],
            height: 100,
            width: 140,
            //padding: EdgeInsets.all(10),
            child: Image.asset(offer.imagePath, fit: BoxFit.fill),
          ),
        ),
        Container(
          //decoration: BoxDecoration(border: Border.all(width: 1)),
          color: Colors.grey[300],
          width: 140,
          //color: Colors.white,
          //padding: EdgeInsets.all(10),
          child: Text(
            offer.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 6),
            //textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
