import "dart:math";

class CalcBrain {
  CalcBrain({this.weight = 50, this.height = 150}) {
    _bmi = this.weight / pow(this.height / 100, 2);
  }

  int height;
  int weight;
  double _bmi = 0;

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    }
    else if (_bmi > 18.5) {
      return "Normal";
    }
    else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You need some exercise.";
    }
    else if (_bmi > 18.5) {
      return "You're fine.";
    }
    else {
      return "You should probably eat more.";
    }
  }
}