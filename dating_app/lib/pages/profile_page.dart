

import 'package:datingapp/commons/my_info.dart';
import 'package:datingapp/commons/opaque_image.dart';
import 'package:datingapp/styleguide/colors.dart';
import 'package:datingapp/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child:
                  Stack(
                    children: <Widget>[
                      opaqueimage(
                        imageurl: 'assets/images/image.jpg',
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text("My Profile",
                                textAlign: TextAlign.left
                                  ,style:headingTextStyle
                                  ,),
                              ),
                              MyInfo(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              Expanded(
                flex: 1,
                child:
                Container(
                  color: secondaryTextColor,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
