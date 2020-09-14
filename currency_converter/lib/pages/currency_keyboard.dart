import 'package:currencyconverter/pages/CurrencyService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyKeyboard extends StatefulWidget {
  final keyboardColor;
  final keyColor;
  final origCurrency;
  final convCurrency;
  final taptoDeleteColor;
  final currencyValue;
  final tickColor;



  CurrencyKeyboard({this.keyboardColor, this.keyColor, this.origCurrency,
    this.convCurrency, this.taptoDeleteColor, this.currencyValue, this.tickColor});

  @override
  _CurrencyKeyboardState createState() => _CurrencyKeyboardState();
}

class _CurrencyKeyboardState extends State<CurrencyKeyboard> {
  var currInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.keyboardColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0,),
          InkWell(
            onTap: () {
              setState(() {
                currInput = 0;
              });
            },
            child: Center(
              child: Text("tap to delete",
                style: TextStyle(
                    fontSize: 14.0,
                    color: widget.taptoDeleteColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(currInput.toString(),
            style: TextStyle(
              fontSize: 100.0,
              color: widget.currencyValue,
            ),),
          SizedBox(height: 15.0,),
          NumberRow(1, 2, 3),
          SizedBox(height: 15.0,),
          NumberRow(4, 5, 6),
          SizedBox(height: 15.0,),
          NumberRow(7, 8, 9),
          SizedBox(height: 15.0,),
          finalRow(),
        ],
      ),
    );
  }

  Widget NumberRow(number1, number2, number3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            calculateNumber(number1);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                color: widget.keyColor.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
            ),
            child: Center(
              child: Text(number1.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              ),),
            ),
          ),

        ),
        InkWell(
          onTap: () {
            calculateNumber(number2);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                color: widget.keyColor.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
            ),
            child: Center(
              child: Text(number2.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                ),),
            ),
          ),

        ),
        InkWell(
          onTap: () {
            calculateNumber(number3);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                color: widget.keyColor.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
            ),
            child: Center(
              child: Text(number3.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                ),),
            ),
          ),

        ),
      ],
    );
  }

  calculateNumber(number){
    if(currInput==0){
      setState(() {
        currInput=number;
      });
    }else{
      setState(() {
        currInput=(currInput*10)+number;
      });
    }
  }

  Widget finalRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            //calculateNumber(0);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                color: widget.keyColor.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
            ),
            child: Center(
              child: Text('.',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                ),),
            ),
          ),

        ),
        InkWell(
          onTap: () {
            //calculateNumber(number3);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                color: widget.keyColor.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
            ),
            child: Center(
              child: Text('0',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                ),),
            ),
          ),

        ),
        InkWell(
          onTap: () {
            print(widget.origCurrency);
              CurrencyService().convertCurrency(
                  widget.convCurrency.toString(),
                  widget.origCurrency.toString(),
                  currInput,
                  context);
          },
          child: Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
                color: widget.keyColor.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(40.0))
            ),
            child: Center(
              child: Icon(
                Icons.check,
                color: widget.tickColor,
                size: 40.0,
              )
            ),
          ),

        ),
      ],
    );
  }
}