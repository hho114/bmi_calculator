import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  static const String id = 'result';

  Result({this.bmiResult,this.resultText,this.interpretation});
  final String resultText;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result',style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,// default is 1, but we need this section bigger so we make it 5
            child: ReusableCard(colour: kActiveCardColour, 
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resultText, style: kResultTextStyle,),
                Text(bmiResult,style: kBMITextStyle,),
                Text(interpretation, style: kBodyTextStyle,textAlign: TextAlign.center,)
                
            ],),),
          ),

          BottomButton(title: 'RE-CALCULATOR', onPressed: ()=>Navigator.pop(context),)

        ],
      ),
      
    );
  }
}