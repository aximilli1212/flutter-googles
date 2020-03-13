import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.white,
          appBar:AppBar(
            title:Text("Mi Card"),
            backgroundColor: Colors.orange,
          ),
          body:SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height:100.0,
                  width: 100.0,
                  color: Colors.blueGrey,
                  child: Center(
                     child: Text("Me is first Box"),
                  )
                ),
                Container(
                  height:100.0,
                  width: 100.0,
                  color: Colors.redAccent,
                  child: Center(
                     child: Text("Me is Second Box"),
                  )
                ),
                Container(
                  height:100.0,
                  width: 100.0,
                  color: Colors.teal,
                  child: Center(
                     child: Text("Me is Third Box"),
                  )
                )
              ],
            )
          ),
        )
    );
  }
}

