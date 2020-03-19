import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
import 'constants.dart';


enum Gender {
  male,
  female
}

//Widgets Declared
Color  maleCardColor = kActiveCardColor;
Color  femaleCardColor = kActiveCardColor;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Expanded(
            child: Row(
                children: <Widget>[
                    Expanded(
                    child:ReuseableCard(
                      onPress:(){
                          setState((){
                            selectedGender = Gender.male;
                          });
                      },
                      colour: selectedGender == Gender.male ? kActiveCardColor: kInactiveCardColor,
                      cardChild:IconContent(
                          icon: Icons.battery_alert,
                          label:'male'
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      onPress:(){
                        setState((){
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? kActiveCardColor: kInactiveCardColor,
                        cardChild:IconContent(
                            icon: Icons.add_shopping_cart,
                            label:'Female'
                        ),
                    ),
                  ),
            ]

            ),
          ),
            Expanded(
              child: ReuseableCard(
                colour: Color(0XFF1D1E33),
                 cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text(
                       "HEIGHT",
                       style: kLabelTextStyle,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic,
                       children: <Widget>[
                         Text(
                           '180',
                           style: kHeavyTextStyle,
                         ),
                         Text(
                           'cm',
                           style: kLabelTextStyle,
                         ),
                       ],
                     ),
                   ],
                 ),
              ),
            ),
            Expanded(
              child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReuseableCard(
                        colour: Color(0XFF1D1E33),
                      ),
                    ),
                    Expanded(
                      child: ReuseableCard(
                        colour: Color(0XFF1D1E33),
                      ),
                    ),

                  ]

              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10.0),
              color: kBottomCardColor,
              width: double.infinity,
              height: kConHeight,
            )
        ],
      )
    );
  }
}
