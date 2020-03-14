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
            backgroundColor: Colors.red,
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
        child:Image.asset('images/dice3.png')
    ),
        Expanded(
        child: Image.asset('images/dice1.png')
    ),
      ],
    );
  }
}
