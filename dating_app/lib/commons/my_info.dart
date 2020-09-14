import 'package:datingapp/commons/rounded_image.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0,0.0),
        child: Column(
          children: <Widget>[
            RoundedImage(
              imagePath:'assets/images/image.jpg',
              size:Size.fromWidth(120.0),
            ),
          ],
        ),
      ),
    );
  }
}
