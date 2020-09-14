import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final Size size;

  const RoundedImage({Key key, this.imagePath, this.size}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print(size.width);
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: size.width,
        height: size.width,
        fit: BoxFit.fitWidth

      ),
    );

  }
}
