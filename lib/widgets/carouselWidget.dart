import 'dart:math';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carouselwidget extends StatelessWidget {
  const Carouselwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (int i = 1; i <= 5; i++)
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                  'https://picsum.photos/seed/picsum/200/300?random=${Random().nextInt(100)}',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
      ],
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        enlargeCenterPage: true,
        animateToClosest: true,
      ),
    );
  }
}
