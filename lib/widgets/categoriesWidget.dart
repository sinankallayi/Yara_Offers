import 'package:flutter/material.dart';
import 'package:ui/widgets/fullScreenImageWidget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i <= 8; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content horizontally
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
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
                    child: Container(
                      width: 150, // Fixed width
                      height: 200, // Fixed height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        'https://picsum.photos/seed/picsum/200/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
