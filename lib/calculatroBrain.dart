import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return _bmi >= 25
        ? 'Overweight'
        : _bmi > 18.5
            ? 'Normal'
            : 'Underweight';
  }

  String getInterpretation() {
    return _bmi >= 25
        ? 'You have a higher than normal body weight. Try to exercise more.'
        : _bmi > 18.5
            ? 'You have a normal body weight. Great job!'
            : 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
