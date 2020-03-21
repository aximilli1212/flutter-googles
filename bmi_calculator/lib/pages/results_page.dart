import 'package:flutter/material.dart';
import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

   ResultsPage({@required this.interpretation,@required this.bmi, @required this.results});
  final String interpretation;
  final String bmi;
  final String results;

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
                  Text(results.toUpperCase(), style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
              ),
              Text(bmi.toString(), style: kBMITextStyle,),
                  Text(interpretation,
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
