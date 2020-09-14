import 'package:datingapp/styleguide/colors.dart';
import 'package:flutter/material.dart';

class opaqueimage extends StatelessWidget {
  final imageurl;

  const opaqueimage({Key key, @required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          imageurl,
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: primaryColorOpacity.withOpacity(0.85),
        ),
      ],
    );
  }
}
