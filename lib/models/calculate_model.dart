import 'dart:math';

class Calculate {
  double height;
  double weight;
  double bmi = 0;
  String gender = "m";
  int age;

  Calculate({required this.height, required this.weight, required this.age});

  String result() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(2);
  }

  String getText() {
    if (bmi >= 25) {
      return "Overweight.";
    } else if (bmi > 18.5 && bmi < 25) {
      return "Normal.";
    } else if (bmi > 10 && bmi < 18) {
      return "Underweight.";
    } else {
      return "Check your numbers. ";
    }
  }

  String getAdvice() {
    if (bmi >= 25) {
      return "You have more than normal body weight. \n Try to do more exercise.";
    } else if (bmi > 18.5) {
      return "You have a normal body weight. \n Brilliant!.";
    } else {
      return "You have a lower than body weight. \n Try to eat more & do exercise.";
    }
  }
}
