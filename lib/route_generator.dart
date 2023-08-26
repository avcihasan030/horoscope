import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_detail.dart';
import 'package:horoscope_guide/horoscope_list.dart';
import 'package:horoscope_guide/model/horoscope.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HoroscopeList(),
        );
      case '/horoscopeDetail':
        return MaterialPageRoute(
          builder: (context) => HoroscopeDetail(
              selectedHoroscope: settings.arguments as Horoscope),
        );
    }
  }
}
