import 'package:flutter/material.dart';
import 'package:bmi_calculator/helpers/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.actionText, this.onTap});

  final String actionText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
            child: Text(
              actionText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            )),
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomCardColor,
        width: double.infinity,
        height: kConHeight,
      ),
    );
  }
}