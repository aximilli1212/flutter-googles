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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Cart ${currentUser.cart.length}'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            Order order = currentUser.cart[index];
            return BuildCartItem(order: order);

          }, separatorBuilder: (BuildContext context, int index){
            return Divider(
              height: 1.0,
              color: Colors.red,
            );
      }, itemCount: currentUser.cart.length),
    );
  }
}
