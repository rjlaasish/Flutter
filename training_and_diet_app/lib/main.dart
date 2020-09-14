import 'package:flutter/material.dart';
import 'package:traininganddietapp/pages/profile_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fitness App",
      home: ProfileScreen(),
    );
  }
}

