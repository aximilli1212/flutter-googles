import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/models/order.dart';



class BuildRecentOrder  extends StatelessWidget {

  BuildRecentOrder({@required this.order});

  final Order order;

  @override
  Widget build(BuildContext context){
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    fit: BoxFit.cover,
                    height: 100.0,
                    width: 100.0,
                    image: AssetImage(order.food.imageUrl),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          order.food.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          order.restaurant.name,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          order.date,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: IconButton(
              icon:Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: (){},
            ),
          )

        ],
      ),
    );
  }
}