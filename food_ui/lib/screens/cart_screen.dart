import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/models/order.dart';

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
            Order order = currentUser.cart[index]

          }, separatorBuilder: null, itemCount: null),
    );
  }
}
