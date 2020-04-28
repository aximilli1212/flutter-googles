import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/models/order.dart';

class RecentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Recent Orders', style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
          ),
        ),
        Container(
         height: 120.0,
          color: Colors.grey,
          child: ListView.builder(
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index){
              Order order = currentUser.orders[index];
              return Text(order.food.name);

            },
          ),
    )
      ],
    );
  }
}
