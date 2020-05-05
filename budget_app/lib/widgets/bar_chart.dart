import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {

  BarChart({this.spending});

  final List<double> spending;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Weekly Spending',
          style: TextStyle(
             fontWeight: FontWeight.bold,
            fontSize: 20.0,
            letterSpacing: 1.2,
          ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 30.0,
                onPressed: (){},
              ),
            Text('Nov 10, 2019 - Nov 6, 2020', style:
              TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 30.0,
              onPressed: (){},
            )
          ],
        )
      ],
    );
  }
}
