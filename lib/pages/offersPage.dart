import 'package:flutter/material.dart';
import 'package:ui/widgets/appbarWidget.dart';
import 'package:ui/widgets/fullScreenImageWidget.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: const AppBarWidget(),
        //   centerTitle: true,
        //   backgroundColor: const Color.fromARGB(255, 6, 63, 20),
        // ),
        body: Column(
          children: [
            Container(
              // margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(
                top: 45,
                left: 15,
                right: 15,
                bottom: 20,
              ),
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
            SizedBox(height: 15),
            Text(
              'Offers Gallery',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: 10,
                  itemBuilder: (final context, final index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FullScreenImageView(
                                imageProvider: NetworkImage(
                                  'https://picsum.photos/seed/picsum/200/300',
                                ),
                              ),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Image.network(
                                'https://picsum.photos/seed/picsum/200/300',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Image Title ${index + 1}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
