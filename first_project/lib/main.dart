import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          backgroundColor: Colors.grey[900],
          body: MyWidget(),
        ));
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/me.jpg'),
            radius: 50.0,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name:  ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, letterSpacing: 2.0),
              ),
              Text(
                "Aasish Rijal",
                style: TextStyle(
                    color: Colors.white, fontSize: 35.0, fontFamily: 'Satisfy'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Age:  ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, letterSpacing: 2.0),
              ),
              Text(
                "16 (Young naa?!)",
                style: TextStyle(
                    color: Colors.white, fontSize: 35.0, fontFamily: 'Satisfy'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "College:  ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, letterSpacing: 2.0),
              ),
              Text(
                "Texas Int'l College",
                style: TextStyle(
                    color: Colors.white, fontSize: 35.0, fontFamily: 'Satisfy'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Address:  ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, letterSpacing: 2.0),
              ),
              Text(
                "Morang, Nepal",
                style: TextStyle(
                    color: Colors.white, fontSize: 35.0, fontFamily: 'Satisfy'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contact:  ",
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0, letterSpacing: 2.0),
              ),
              Text(
                "98****5390",
                style: TextStyle(
                    color: Colors.white, fontSize: 35.0, fontFamily: 'Satisfy'),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "For further contact:rjlaasish@gmail.com",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
