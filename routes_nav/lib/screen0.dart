import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';


class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Screen0'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              color: Colors.purple,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Screen1();
                }
                ),
                );
              },
              child: Text('Goto Screen 1', style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
          Center(
            child: RaisedButton(
              color: Colors.lightBlueAccent,
              onPressed: (){},
              child: Text('Goto Screen 2', style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
          Center(
            child: RaisedButton(
              color: Colors.orangeAccent,
              onPressed: (){},
              child: Text('Goto Screen 0', style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
