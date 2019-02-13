import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minimalcurrency/dashboard.dart';

class CurrencyService {
  getCurrencyString(currency) {
    if (currency == 'USD') return 'United States Dollar';
    if (currency == 'RUB') return 'Russian Ruble';
    if (currency == 'JPY') return 'Japanese Yen';
    if (currency == 'INR') return 'Indian Rupee';
    if (currency == 'GBP') return 'Pound Sterling';
  }

  convertCurrency(String fromCurrency, String toCurrency, int amount, context) {
    if (fromCurrency == 'USD') {
      switch (toCurrency) {
        case 'RUB':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 65).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'JPY':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 110.48).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'INR':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 70.53).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
        case 'GBP':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 0.78).roundToDouble(),
                  currencyone: fromCurrency,
                  currencytwo: toCurrency,
                  isWhite: false)));
          break;
      }
    }
    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
                currencyVal: (amount / 65).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                isWhite: true,
              )));
    }

    if (fromCurrency == 'INR') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
                currencyVal: (amount * 0.014).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                isWhite: true,
              )));
    }

    if (fromCurrency == 'JPY') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
                currencyVal: (amount * 0.0091).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                isWhite: true,
              )));
    }
    if (fromCurrency == 'GBP') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
                currencyVal: (amount * 1.29).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyone: toCurrency,
                currencytwo: fromCurrency,
                isWhite: true,
              )));
    }
  }
}
