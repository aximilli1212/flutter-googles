import 'package:flutter/material.dart';

Padding FlashRoundedButton({BuildContext context, String bText,Color bColor, Function onTap}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Material(
      elevation: 5.0,
      color: bColor,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: () {
          onTap();
          //Go to login screen.
        },
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          bText,
        ),
      ),
    ),
  );
}