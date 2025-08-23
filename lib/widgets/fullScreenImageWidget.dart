import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For SystemChrome

class FullScreenImageView extends StatefulWidget {
  final ImageProvider imageProvider;

  const FullScreenImageView({Key? key, required this.imageProvider})
    : super(key: key);

  @override
  _FullScreenImageViewState createState() => _FullScreenImageViewState();
}

class _FullScreenImageViewState extends State<FullScreenImageView> {
  @override
  void initState() {
    super.initState();
    // Hide system UI overlays for a truly full-screen experience
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    // Restore system UI overlays when leaving the full-screen view
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Or any color for the background
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // Dismiss the full-screen view on tap
        },
        child: Center(
          child: InteractiveViewer(
            // Allows for zooming and panning
            child: Image(
              height: double.infinity,
              width: double.infinity,
              image: widget.imageProvider,
              fit: BoxFit.contain, // Adjust fit as needed
            ),
          ),
        ),
      ),
    );
  }
}
