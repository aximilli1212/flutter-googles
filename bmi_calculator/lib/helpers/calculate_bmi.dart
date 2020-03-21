import 'dart:math';

class CalculateBmi{

  CalculateBmi({this.weight,this.height});
  final int height;
  final int weight;
  double _bmi;

  calculateBmi(){
    _bmi = weight / pow(height/ 100, 2);
    return _bmi;

  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Your BMI result is quite hight, you should eat less sugar.';
    }else if(_bmi > 18.5){
      return 'Your BMI result is normal, you should keep up the good work.';
    }else {
      return 'Your BMI result is quite low, you really should eat more, some carbs perhaps.';
    }
  }
}