import 'package:flutter/material.dart';
import 'package:ui/models/offer.dart';

class Shop extends ChangeNotifier {
  final List<Offer> _shop = [
    Offer(
      title: '50% Off on All Products',
      description:
          'Get 50% off on all products in our store. Limited time offer!',
      imagePath: 'assets/offer1.jpeg',
    ),
    Offer(
      title: 'Buy One Get One Free',
      description: 'Buy one product and get another one for free. Hurry up!',
      imagePath: 'assets/offer2.jpeg',
    ),
    Offer(
      title: 'Free Shipping on Orders Over 50',
      description: 'Enjoy free shipping on all orders over 50. Shop now!',
      imagePath: 'assets/offer3.jpeg',
    ),
    Offer(
      title: '20% Off for New Customers',
      description:
          'New customers get 20% off on their first purchase. Welcome!',
      imagePath: 'assets/offer4.jpeg',
    ),
    Offer(
      title: 'Flash Sale - Up to 70% Off',
      description:
          'Limited time flash sale with discounts up to 70%. Don\'t miss out!',
      imagePath: 'assets/offer5.jpeg',
    ),
  ];

  List<Offer> get shop => _shop;
}
