import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/models/order.dart';

class RecentOrders extends StatelessWidget {

  _buildRecentOrder(BuildContext context, Order order){
     return Container(
       margin: EdgeInsets.all(10.0),
       width: 320.0,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(15.0),
         border: Border.all(
           width: 1.0,
           color: Colors.grey[200],
         )
       ),
       child: Row(
         children: <Widget>[
            Image(
              image: AssetImage(order.food.imageUrl),
            )
         ],
       ),
     );
  }

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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index){
              Order order = currentUser.orders[index];
              return _buildRecentOrder(context, order);
            },
          ),
    )
      ],
    );
  }
}
