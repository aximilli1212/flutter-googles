import 'package:flutter/material.dart';

class FlashRoundedButton extends StatelessWidget {
  FlashRoundedButton({this.bText,this.bColor,@required this.onTap});

  final String bText;
  final Color bColor;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
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
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
