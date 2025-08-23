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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const AppBarWidget(),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 63, 20),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8, // Added for better alignment
              childAspectRatio: 0.75, // Optional: adjust for image shape
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
    );
  }
}
