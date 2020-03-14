import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text("Dicee"),
            backgroundColor: Colors.red.shade400,
          ),
          body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
        child:Image(
          image: AssetImage('images/dice1.png'),
        ) ,
    ),
        Expanded(
        child:Image(
          image: AssetImage('images/dice1.png'),
        ) ,
    ),

      ],
    );
  }
}
