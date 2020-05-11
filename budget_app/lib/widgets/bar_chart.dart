import 'package:flutter/material.dart';
import 'package:budget_app/widgets/bar.dart';

class BarChart extends StatelessWidget {

  BarChart({this.spending});

  final List<double> spending;

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;

    spending.forEach((double price){
      if(price > mostExpensive){
        mostExpensive = price;
      }
    });

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
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
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Bar(label:'su', amountSpent: spending[0], mostExpensive: mostExpensive),
      Bar(label:'mon', amountSpent: spending[1], mostExpensive: mostExpensive),
      Bar(label:'tue', amountSpent: spending[2], mostExpensive: mostExpensive),
      Bar(label:'wed', amountSpent: spending[3], mostExpensive: mostExpensive),
      Bar(label:'thu', amountSpent: spending[4], mostExpensive: mostExpensive),
      Bar(label:'fri', amountSpent: spending[5], mostExpensive: mostExpensive),
      Bar(label:'sat', amountSpent: spending[6], mostExpensive: mostExpensive),
    ],
    )
      ],
    );
  }
}
