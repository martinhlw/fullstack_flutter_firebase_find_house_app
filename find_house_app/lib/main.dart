import 'package:find_house_app/pages/home_page.dart';
import 'package:find_house_app/pages/splash_page.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}