import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/components/my_brochure.dart';
import 'package:ui/components/my_offer_tile.dart';
import 'package:ui/models/shop.dart';
import 'package:ui/pages/offersGallery.dart';
import 'package:ui/pages/offersPage.dart';
import 'package:ui/widgets/appbarWidget.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = context.watch<Shop>().shop;
    return Scaffold(
      // appBar: AppBar(
      //   title: const AppBarWidget(),
      //   centerTitle: true,
      //   backgroundColor: const Color.fromARGB(255, 6, 63, 20),
      // ),
      body: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(top: 45, left: 15, right: 15, bottom: 20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 122, 187, 134),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),

            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello,Sinan Kallayi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 98, 149, 107),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.location_on, size: 20),
                    ),
                  ],
                ),
                // SizedBox(height: 5),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(5),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 2,
                //         blurRadius: 5,
                //         offset: Offset(0, 3),
                //       ),
                //     ],
                //   ),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: "Search for offers",
                //       border: InputBorder.none,
                //       icon: Icon(Icons.search, color: Colors.grey),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(
              top: 5,
              // bottom: 5,
              left: 8,
              right: 3,
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
                      MaterialPageRoute(builder: (context) => OffersGallery()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 6, 63, 20),
                  ),
                  child: Text(
                    "VIEW ALL ->",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 450,
            child: ListView.builder(
              itemCount: offers.length,
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final offer = offers[index];
                return MyOfferTile(offer: offer);
              },
            ),
          ),

          // Expanded(
          //   child: SizedBox(
          //     height: 350,
          //     child: ListView.builder(
          //       itemCount: offers.length,
          //       padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: (context, index) {
          //         final offer = offers[index];
          //         return MyBrochure(offer: offer);
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
