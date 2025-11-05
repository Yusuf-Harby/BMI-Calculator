import 'package:bmi/result_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home Screen',
      routes: {
        'Home Screen': (context) => HomeScreen(),
        'Result Screen': (context) => ResultScreen(),
      },
    );
  }
}
