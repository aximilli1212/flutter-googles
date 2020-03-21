import 'dart:math';

class CalculateBmi{
  final int height;
  final int weight;

  CalculateBmi({this.weight,this.height});

  double _bmix;

  String calculateBmi(){
    _bmix = weight / pow(height/ 100, 2);
    return _bmix.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmix >= 25){
      return 'Overweight';
    }else if(_bmix > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmix >= 25){
      return 'Your BMI result is quite hight, you should eat less sugar.';
    }else if(_bmix > 18.5){
      return 'Your BMI result is normal, you should keep up the good work.';
    }else {
      return 'Your BMI result is quite low, you really should eat more, some carbs perhaps.';
    }
  }
}