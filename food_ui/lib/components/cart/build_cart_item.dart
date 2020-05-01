import 'package:flutter/material.dart';
import 'package:food_ui/models/order.dart';

class BuildCartItem extends StatelessWidget {

  BuildCartItem({this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 170.0,
      child:Row(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Container(
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(order.food.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(order.food.name,
                        style:TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 10.0),
                      Text(order.restaurant.name,
                        style:TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 0.8,
                            color: Colors.black54,
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){},
                              child: Text('-', style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Text(order.quantity.toString(),
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 20.0),
                            GestureDetector(
                              onTap: (){},
                              child: Text('+',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            ),
          ),
          Text('\$${order.quantity * order.food.price}',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
          )
        ],
      )
    );
  }
}
