import 'package:flutter/material.dart';

class Bar extends StatelessWidget {

  final String label;
  final double amountSpent;
  final double mostExpensive;
  final double _maxBarHeight = 150.0;


  Bar({this.label,this.amountSpent,this.mostExpensive})


  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;

    return Column(
      children: <Widget>[
        Text('\$${amountSpent.toStringAsFixed(2)}'),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        Text(label),
      ],
    );
  }
}
