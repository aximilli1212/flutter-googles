import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Screen2'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              color: Colors.deepOrange,
              onPressed: (){
                Navigator.pushNamed(context,'/');

              },
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
