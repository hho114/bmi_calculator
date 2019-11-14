import 'dart:math';

class Calculator {

  Calculator({this.weight,this.height});

  final int weight;
  final int height;
  double _bmi;//private variable

  String getCalculatorBMI(){
    _bmi = weight /pow(height/100, 2);//height /100 to convert to m
  return _bmi.toStringAsFixed(1);  
  }

  String getResult(){
    return _bmi >= 30 ? 'Obese':_bmi >= 25 ? 'Overweight' : _bmi >= 18.5 ? 'Normal': 'Underweight';
  }
  
  String getInterpretation(){
    return 
    _bmi >= 30 
    ? 'You have a obese body weight. Try to stricted exercise and have a stricted diet plan.' 
    :_bmi >= 25 
    ? 'You have a higher than a normal body weight. Try to exercise more.' 
    : _bmi >= 18.5 
    ? 'You have a normal body weight. Good job!'
    : 'You have a lower than normal body weight. You can eat a bit more.';
  }
}