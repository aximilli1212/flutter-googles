import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';

const CONHEIGHT = 80.0;
const ActiveCardColor = Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child:ReuseableCard(
                      colour: ActiveCardColor,
                      cardChild:IconContent(
                          icon: Icons.battery_alert,
                          label:'male'
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: ActiveCardColor,
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
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: CONHEIGHT,
            )
        ],
      )
    );
  }
}
