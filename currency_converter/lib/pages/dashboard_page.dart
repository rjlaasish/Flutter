import 'package:currencyconverter/pages/CurrencyService.dart';
import 'package:currencyconverter/pages/currency_keyboard.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyOne;
  final currencyTwo;
  final isWhite;

  DashboardPage({this.currencyVal, this.convertedCurrency, this.currencyOne,
    this.currencyTwo, this.isWhite});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {


  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            color: Colors.white,
          ),
          Container(
            width: width,
            height: height/2,
            color: Colors.redAccent,
          ),
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 35.0,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context)=>CurrencyKeyboard(
                          keyboardColor: Colors.redAccent,
                          keyColor: Colors.white.withOpacity(0.5),
                          convCurrency: 0.0,
                          taptoDeleteColor: Colors.white.withOpacity(0.5),
                          origCurrency: 0.0,
                           currencyValue: Colors.white,
                          tickColor: Colors.white,
                        )
                      ));
                    },
                    child: Text(
                      CurrencyService().getCurrentCurrency(widget.currencyOne),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  InkWell(
                    onTap: (){
                    },
                    child: Text(
                      widget.currencyVal.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 120.0
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(widget.currencyOne,style:
                    TextStyle(color: Colors.white),),
                  SizedBox(height: 10.0,),
                  Container(
                    width: 125.0,
                    height: 125.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color:  Colors.redAccent,
                      width: 5.0),
                      borderRadius: BorderRadius.all(Radius.circular(62))
                    ),
                    child: Center(
                      child: widget.isWhite ?Icon(Icons.arrow_upward,
                        size: 60.0,
                        color: Colors.redAccent,) :Icon(Icons.arrow_downward,
                        size: 60.0,
                        color: Colors.redAccent,)
                    )

                  ),
                  SizedBox(height: 10.0,),
                  Text(widget.currencyTwo,style:
                  TextStyle(color: Colors.redAccent),
                  ),
                  InkWell(
                    onTap: (){
                    },
                    child: Text(
                      widget.currencyVal.toString(),
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 120.0
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context)=>CurrencyKeyboard(
                            keyboardColor: Colors.white,
                            keyColor: Colors.redAccent.withOpacity(0.5),
                            convCurrency: 0.0,
                            origCurrency: 0.0,
                            taptoDeleteColor: Colors.redAccent.withOpacity(0.5),
                            currencyValue: Colors.redAccent,
                            tickColor: Colors.redAccent,
                          )
                      ));
                    },
                    child: Text(
                      CurrencyService().getCurrentCurrency(widget.currencyTwo),
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 22.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
