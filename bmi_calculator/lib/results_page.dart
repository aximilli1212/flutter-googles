import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';
class ResultsPage extends StatelessWidget {

  double bmi = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("Your Result", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
          ),
          Expanded(
            flex:5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Normal", style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
              ),
              Text(bmi.toString(), style: kBMITextStyle,),
                  Text("Your BMI result is quie low, you should eat more",
                  textAlign: TextAlign.center,
                  style: kLabelTextStyle,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
