import 'dart:math';

class BmiCalculator {
  BmiCalculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Ülekaal';
    } else if (_bmi >= 18.5) {
      return 'Normaalne';
    } else {
      return 'Alakaal';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Sa peaksid rohkem trenni tegema ning  tervislikumalt toituma';
    } else if (_bmi >= 18.5) {
      return 'Sinu tulemus on suurepärane';
    } else {
      return 'Söö rohkem pähkleid';
    }
  }
}
