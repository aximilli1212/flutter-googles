import 'package:flutter/material.dart';
import 'package:food_ui/models/order.dart';

class BuildCartItem extends StatelessWidget {

  BuildCartItem({this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child:Row(
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(order.food.imageUrl)
                ),
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(order.food.name,
              style:TextStyle(
                fontSize: 20.0,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 10.0),
              Text(order.restaurant.name,
              style:TextStyle(
                  fontSize: 16.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              ),
              ),
              Row(
                children: <Widget>[
                  Text('-', style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  SizedBox(width: 20.0),
                  Text(order.quantity.toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
