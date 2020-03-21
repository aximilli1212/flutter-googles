import 'package:flutter/material.dart';
import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text("Your Result", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
              ),
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
          ),
      BottomButton(
      actionText: "RE-CALCULATE",
      onTap: () {
        Navigator.pop(context);
      },
    )
        ],
      ),
    );
  }
}
