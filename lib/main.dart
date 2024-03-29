
import 'package:bmi_calculator/views/input.dart';
import 'package:bmi_calculator/views/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: Input.id,
      routes: {
        'input':(context)=> Input(),
        'result':(context)=> Result(),




      },
    );
  }
}


