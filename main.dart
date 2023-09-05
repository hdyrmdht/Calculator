import 'package:flutter/material.dart';
import 'package:roure/xor.dart';
import 'Login/login_Screen.dart';
import 'categoryscreen/Category_screen.dart';
import 'chat_Screen.dart';
import 'courses/courses_screen.dart';
import 'logics_screens/Slider_screen.dart';
import 'logics_screens/calculator/calculator.dart';
import 'logics_screens/counte_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen());
  }
}
