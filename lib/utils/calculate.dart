import 'dart:math';

class CalculateBrain {
  final int height;
  final int weight;
  double _bmi = 0.0;

  CalculateBrain({required this.height, required this.weight});

  String calculate() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Berat Badan Kurang';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Berat Badan Normal';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Berat Badan Berlebih';
    } else if (_bmi >= 30 && _bmi < 35) {
      return 'Obesitas tingkat 1';
    } else {
      return 'Obesitas tingkat 2';
    }
  }

  String getInterpretation() {
    if (_bmi >= 35) {
      return 'Kamu memiliki Obesitas tingkat 2, Atur pola diet makan kamu lebih lagi.';
    } else if (_bmi >= 30) {
      return 'Kamu memiliki Obesitas tingkat 1, Harus melakukan diet makan.';
    } else if (_bmi >= 25) {
      return 'Kamu memiliki berat badan lebih dari normal. Lakukan olahraga setiap hari.';
    } else if (_bmi > 18.5) {
      return 'Kamu memiliki berat badan yang normal. Good Job!.';
    } else {
      return 'Kamu memiliki berat badan lebih rendah dari biasanya. Kamu bisa makan lebih banyak lagi.';
    }
  }
}
