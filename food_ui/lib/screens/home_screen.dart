import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'main_body.dart';
import 'package:food_ui/screens/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          onPressed: (){},
          iconSize: 30.0,
          icon: Icon(Icons.account_circle, color: Colors.white),
        ),
        title: Center(child: Text('Food Delivery')),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> CartScreen()));
            },
            child: Text('Cart (${currentUser.cart.length})',
            style: TextStyle(fontSize: 20.0, color: Colors.white),),
          )
        ],
      ),
      body: MainBody(),
    );
  }
}

