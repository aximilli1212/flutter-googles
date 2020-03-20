import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Screen1'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              color: Colors.lightBlueAccent,
              onPressed: (){},
              child: Text('Goto Screen 2', style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
