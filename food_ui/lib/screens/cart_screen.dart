import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/models/order.dart';
import 'package:food_ui/components/cart/build_cart_item.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    currentUser.cart.forEach(
        (Order order) => totalPrice += order.quantity * order.food.price
    );



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Cart ${currentUser.cart.length}'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            if(index < currentUser.cart.length){
              Order order = currentUser.cart[index];
              return BuildCartItem(order: order);
             }else{
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Text(
                           'Estimated Delivery Time',
                           style: TextStyle(
                             fontSize: 20.0,
                             fontWeight: FontWeight.w600,
                           ),
                           overflow: TextOverflow.ellipsis,
                         ),
                        Text(
                           '25 min',
                           style: TextStyle(
                             fontSize: 20.0,
                             fontWeight: FontWeight.w600,
                           ),
                           overflow: TextOverflow.ellipsis,
                         )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Text(
                           'Total Cost',
                           style: TextStyle(
                             fontSize: 20.0,
                             fontWeight: FontWeight.w600,
                           ),
                           overflow: TextOverflow.ellipsis,
                         ),
                        Text(
                           '\$${totalPrice.toStringAsFixed(2)}',
                           style: TextStyle(
                             color: Colors.green[600],
                             fontSize: 20.0,
                             fontWeight: FontWeight.w600,
                           ),
                           overflow: TextOverflow.ellipsis,
                         )
                      ],
                    ),
                    SizedBox(height: 100.0),
                  ],
                ),
              );
            }
          }, separatorBuilder: (BuildContext context, int index){
            return Divider(
              height: 1.0,
              color: Colors.red,
            );
      },
          itemCount: currentUser.cart.length + 1),
      bottomSheet: Container(
        child: Center(
          child: Text(
            'CHECKOUT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0,-1),
              blurRadius: 6.0,
            )
          ]
        ),
      ),
    );
  }
}
