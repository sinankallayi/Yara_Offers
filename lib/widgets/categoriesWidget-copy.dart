import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategoriesWidgets extends StatefulWidget {
  const CategoriesWidgets({super.key});

  @override
  State<CategoriesWidgets> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidgets> {
  final urlImage = ['https://picsum.photos/seed/picsum/200/300'];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        aspectRatio: 16 / 9,
        initialPage: 0,
      ),
      itemCount: urlImage.length,
      itemBuilder: (context, index, realIndex) {
        final imageUrl = urlImage[index];
        return buildImage(imageUrl, index);
      },
    );

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       for (int i = 1; i <= 8; i++)
    //         Container(
    //           margin: EdgeInsets.symmetric(horizontal: 10),
    //           padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Image.network(
    //                 'https://picsum.photos/seed/picsum/200/300',
    //                 height: 200,
    //               ),
    //               // Padding(
    //               //   padding: EdgeInsets.only(left: 5),
    //               //   child: Text(
    //               //     "Offers",
    //               //     style: TextStyle(
    //               //       fontSize: 16,
    //               //       fontWeight: FontWeight.w600,
    //               //       color: Colors.blueAccent,
    //               //     ),
    //               //   ), // Text
    //               // ), // Padding
    //             ],
    //           ),
    //         ),
    //     ],
    //   ),
    // );
  }

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    color: Colors.grey,
    child: Image.network(urlImage, fit: BoxFit.cover),
  );
}
