import 'package:currencyconverter/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DashboardPage(
        currencyVal: 0.0,
        convertedCurrency: 0.0,
        currencyOne: "USD",
        currencyTwo: "NEP",
        isWhite: false,
      ),
    );
  }
}

