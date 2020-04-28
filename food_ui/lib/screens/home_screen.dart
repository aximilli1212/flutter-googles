import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30.0,
          icon: Icon(Icons.account_circle, color: Colors.white),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(child: Text('Food Delivery')),
      ),
    );
  }
}

