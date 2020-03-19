import 'package:flutter/material.dart';
import 'reuseable_card.dart';

const CONHEIGHT = 80.0;

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
                    child: ReuseableCard(colour: Color(0XFF1D1E33)),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: Color(0XFF1D1E33),
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
              color: Color(0xFFEB1555),
              width: double.infinity,
              height: CONHEIGHT,
            )
        ],
      )
    );
  }
}

