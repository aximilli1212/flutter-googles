import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';


//Constants Declared
const CONHEIGHT = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomCardColor = Color(0xFFEB1555);
enum Gender {
  male,
  female
}

//Widgets Declared
Color  maleCardColor = activeCardColor;
Color  femaleCardColor = activeCardColor;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

//  void updateCardColor(){
//       if(maleCardColor == activeCardColor ){
//         maleCardColor = inactiveCardColor;
//         femaleCardColor = activeCardColor;
//       }
//       else if(femaleCardColor == activeCardColor){
//         maleCardColor = activeCardColor;
//         femaleCardColor = inactiveCardColor;
//       }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
          children: <Widget>[
          Expanded(
            child: Row(
                children: <Widget>[
                    Expanded(
                    child:GestureDetector(
                      onTap:(){
                        setState((){
                         selectedGender = Gender.male;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedGender == Gender.male ? activeCardColor: inactiveCardColor,
                        cardChild:IconContent(
                            icon: Icons.battery_alert,
                            label:'male'
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState((){
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReuseableCard(
                        colour: selectedGender == Gender.female ? activeCardColor: inactiveCardColor,
                          cardChild:IconContent(
                              icon: Icons.add_shopping_cart,
                              label:'Female'
                          ),
                      ),
                    ),
                  ),
            ]

            ),
          ),
            Expanded(
              child: ReuseableCard(
                colour: Color(0XFF1D1E33),
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
              color: bottomCardColor,
              width: double.infinity,
              height: CONHEIGHT,
            )
        ],
      )
    );
  }
}
