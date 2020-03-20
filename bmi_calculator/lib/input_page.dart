import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  int weight = 70;
  int age= 19;

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
                          icon: FontAwesomeIcons.mars,
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
                            icon: FontAwesomeIcons.venus,
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
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kHeavyTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                 icon: FontAwesomeIcons.plus,
                                  updateWeight: (){
                                    setState((){
                                        weight++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  updateWeight: (){
                                    print(weight);
                                    setState((){
                                      weight--;
                                    });
                                  },
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReuseableCard(
                        colour: Color(0xFF1D1E33),
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kHeavyTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                 icon: FontAwesomeIcons.plus,
                                  updateWeight: (){
                                    setState((){
                                        age++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  updateWeight: (){
                                    setState((){
                                      age--;
                                    });
                                  },
                                ),
                              ],
                            )

                          ],
                        ),
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

class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon,this.updateWeight});
  final IconData icon;
  final Function updateWeight;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
       child: Icon(icon),
      onPressed: updateWeight,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

