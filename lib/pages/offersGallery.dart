import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/models/shop.dart';
import 'package:ui/widgets/fullScreenImageWidget.dart';

class OffersGallery extends StatelessWidget {
  const OffersGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final offers = context.watch<Shop>().shop;

    return SafeArea(
      top: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 122, 187, 134),
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Offers Gallery",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 122, 187, 134),
                        Color.fromARGB(255, 29, 84, 42),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                // background: Image.asset(
                //   'assets/gallery_header.jpg',
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(20),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.75,
                ),
                delegate: SliverChildBuilderDelegate((
                  BuildContext context,
                  int index,
                ) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                // SfPdfViewer.network(
                                //   'https://picsum.photos/200',
                                // ),
                                FullScreenImageView(
                                  imageProvider: AssetImage(
                                    offers[index].imagePath,
                                  ),
                                ),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(
                              offers[index].imagePath,
                              fit: BoxFit.cover,
                            ),

                            // Image.network(
                            //   'https://picsum.photos/200',
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            '${offers[index].title}',
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
                }, childCount: offers.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
