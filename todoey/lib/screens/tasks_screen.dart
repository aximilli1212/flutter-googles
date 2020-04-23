import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.list,
              size: 50.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
