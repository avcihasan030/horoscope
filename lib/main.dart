import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_list.dart';
import 'package:horoscope_guide/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
