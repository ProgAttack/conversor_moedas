import 'package:conversor_moedas/app/model/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<currencyModel> currencies;
  final TextEditingController toText;
  final TextEditingController fromText;
  late currencyModel toCurrency;
  late currencyModel fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = currencyModel.getCurrency();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency == 'Bitcoins') {
      returnValue = value * toCurrency.bitcoins;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
