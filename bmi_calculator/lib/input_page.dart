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
Color  sweetPink = Color(0xFFEB1555);
Color  shadowPink = Color(0x29EB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 170;

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
                           height.toString(),
                           style: kHeavyTextStyle,
                         ),
                         Text(
                           'cm',
                           style: kLabelTextStyle,
                         ),
                       ],
                     ),
                     SliderTheme(
                       data: SliderTheme.of(context).copyWith(
                         inactiveTrackColor: Color(0xFF8D8E98),
                         activeTrackColor: Colors.white,
                         thumbColor: sweetPink,
                         overlayColor: shadowPink,
                         thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                         overlayShape: RoundSliderOverlayShape( overlayRadius: 30.00)
                       ),
                       child: Slider(
                         value: height.toDouble(),
                         min: 120.0,
                         max: 220.0,
                         onChanged: (double newValue){
                           setState((){
                             height = newValue.round();
                           });
                         },
                       ),
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
                        colour: Color(0xFF1D1E33),
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
