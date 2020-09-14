import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traininganddietapp/model/meal.dart';
import 'package:vector_math/vector_math.dart' as math;

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Meal meal;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top:  const Radius.circular(40.0)),
          child: BottomNavigationBar(
            selectedIconTheme: IconThemeData(
              color: Color(0xFF200087)
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.black26
            ),
            items: [
              BottomNavigationBarItem(
                title: Text("home",
                style: TextStyle(
                  color: Colors.white
                ),),
                  icon: Icon(Icons.home,
                  size: 30.0,)
              ),
              BottomNavigationBarItem(
                  title: Text("home",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  icon:Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                  title: Text("home",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                  icon:Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: height*0.35,
                child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        bottom: const Radius.circular(40.0)),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 5.0,right: 16.0,
                      left: 32.0,
                      bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text("Date,Year",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0
                            ),),
                            subtitle: Text("Hello, Aasish",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18.0,
                                color: Colors.black
                              ),),
                            trailing: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("assets/images/img1.jpg"),
                          ),
                          ),
                          Row(
                            children: <Widget>[
                              _RadialProgress(
                                width:height*0.2,
                                height:height*0.2,
                                progress: 0.75,
                              ),
                              SizedBox(width:20.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                _IndegrientProgress("Protein",450,0.7,Colors.green),
                                  SizedBox(height:10.0),
                                _IndegrientProgress("Fat",25,0.25,Colors.redAccent),
                                  SizedBox(height:10.0),
                                _IndegrientProgress("Carb", 50,0.45,Colors.blue),
                              ],
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                ),
              ),
              Positioned(
                top: height*0.37,
                left: 0,
                right: 0,
                child: Container(
                  height: height*0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 32.0,
                              bottom: 8.0,
                          ),
                          child: Text("Meals for the day!",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),),
                      ),
                      Expanded(
                        flex: 8,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 30.0,),
                              for(int i=0;i<meals.length;i++)
                                _MealCard(meal: meals[i],)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 11,
                        child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.red
                        ),
                        margin: EdgeInsets.only(bottom: 75.0,
                          left:35.0,
                          right: 35.0,
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0,
      bottom: 10.0),
      child: Material(
        borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
        elevation: 4.0,
        child: 
        Column(

          children: <Widget>[
           Expanded(
             flex: 4,
              child: ClipRRect(
              borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
              child: Image.asset(meal.imagePath,
                width: 100,
                height: 10,
                fit: BoxFit.fill,
              ),
            ),),
            Flexible(
              flex: 5,
              fit: FlexFit.loose,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 5.0,),
                    Text(meal.mealTime),
                    Text(meal.name),
                    Text(meal.kiloCaloriesBurnt),
                    Text(meal.timeTaken),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height;
  final double width,progress;

  const _RadialProgress({Key key, this.height, this.width,@required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CustomPainter(progress: progress),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
            children: [
              TextSpan(text: "1731",style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF200087)
              )),
              TextSpan(text: "\n"),
              TextSpan(text: "kCal",style:
              TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF200087)
              )),
            ]
          )),
        )

      ),
    );
  }
}

// ignore: camel_case_types
class _CustomPainter extends CustomPainter{
  final double progress;

  _CustomPainter({this.progress});



  @override
  void paint(Canvas canvas, Size size) {
    Paint _myPaint=Paint()
      ..strokeWidth=8.0
      ..color=Color(0xFF200087)
      ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.round;
    
    Offset center=Offset(size.width/2,size.height/2);
    //canvas.drawCircle(center, size.width/2, _myPaint);
    double relativeProgress=360*progress;

    canvas.drawArc(Rect.fromCircle(
        center: center,radius: size.width/2),
        math.radians(-90.0),
        math.radians(-relativeProgress),
        false,
        _myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

class _IndegrientProgress extends StatelessWidget {
  final String indegrient;
  final int leftAmount;
  final double progress;
  final Color progressColor;


  _IndegrientProgress(this.indegrient, this.leftAmount, this.progress,
      this.progressColor);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(indegrient.toUpperCase(),style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),),
        Row(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 10,
                width: 120,
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
              Container(
                height: 10,
                width: 120*progress,
                decoration: BoxDecoration(color: progressColor,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
            ],
          ),
          SizedBox(width:5.0),
          Text('${leftAmount}g left',
          style: TextStyle(
            fontSize: 12
          ),),
        ],
        ),
      ],
    );
  }
}
