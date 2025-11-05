import 'package:flutter/material.dart';

class BmiCalculator {
  final int height;
  final int weight;
  final int age;
  final bool isMale;

  BmiCalculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.isMale,
  });

  double calculateBmi() =>  weight / ((height / 100.0) * (height / 100.0));

  String getState() {
    final double bmi = calculateBmi();

    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 25) {
      return 'Normal';
    } else if (bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String getDesc() {
    String state = getState();
    switch (state) {
      case 'Underweight':
        return 'Your weight is below normal. Try to eat more balanced and nutritious meals.';
      case 'Normal':
        return 'You have a normal body weight. Good job!';
      case 'Overweight':
        return 'You are above the normal weight range. Try to stay active and eat healthily.';
      case 'Obese':
      default:
        return 'Your weight is in the obese range. Consider consulting a doctor or nutritionist.';
    }
  }

  Color getColor() {
    String state = getState();
    switch (state) {
      case 'Underweight':
        return Colors.blue;
      case 'Normal':
        return Colors.green;
      case 'Overweight':
        return Colors.orange;
      case 'Obese':
      default:
        return Colors.red;
    }
  }
}
