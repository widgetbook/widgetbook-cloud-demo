import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: ZoomableImage,
)
Widget buildZoomableImageUseCase(BuildContext context) {
  return ZoomableImage();
}

class ZoomableImage extends StatefulWidget {
  @override
  _ZoomableImageState createState() => _ZoomableImageState();
}

class _ZoomableImageState extends State<ZoomableImage> {
  // _ZoomableImageState({required this.fruit});
  double scale = 1.0;
  // final Fruit fruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            scale = details.scale;
          });
        },
        child: Center(
          child: Transform.scale(
            scale: scale,
            child: Container(
              width: 20.0, // Set your desired width
              height: 20.0, // Set your desired height
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/mango.jpeg'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
