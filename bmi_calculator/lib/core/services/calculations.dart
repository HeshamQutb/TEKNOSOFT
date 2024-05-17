import 'dart:math';

class Calculations {
  final int height;
  final int weight;
  Calculations({required this.height, required this.weight});

  double bmi = 0;

  String bmiResult() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String resultType() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try exercising more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. you can eat a bit more.';
    }
  }

}
