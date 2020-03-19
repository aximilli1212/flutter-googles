import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  Color colour = Color(0XFF1D1E33);

  ReuseableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0) ,
      decoration: BoxDecoration(
        color: this.colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}