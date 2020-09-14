import 'package:currencyconverter/pages/dashboard_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyService{
  getCurrentCurrency(currency){
    if(currency== "USD"){
      return "United States Dollar";
    }
    if(currency== "NEP"){
      return "Nepalese Rupees";
    }
  }

  convertCurrency(var fromCurrency,var toCurrency,int amount,context){
    if(fromCurrency=='USD'){
      switch(toCurrency){
        case 'NEP':
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)
          =>DashboardPage(currencyVal:amount,
          convertedCurrency: (amount*100).roundToDouble(),
          currencyOne: fromCurrency,
          currencyTwo: toCurrency,
          isWhite: false,)
          ));
      }
    }
    if(fromCurrency=="NEP"){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)
          =>DashboardPage(
            currencyVal:(amount/116).toStringAsFixed(2),
            convertedCurrency:amount,
            currencyOne: toCurrency,
            currencyTwo: fromCurrency,
            isWhite: true,)
          ));
    }
  }
}