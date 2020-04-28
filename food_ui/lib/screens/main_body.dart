import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TextField(
        decoration: InputDecoration(
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(width: 0.8,color: Colors.deepOrange)

          )
        ),
        )
      ],
    );
  }
}
