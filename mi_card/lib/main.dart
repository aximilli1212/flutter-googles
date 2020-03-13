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
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.teal,
                  backgroundImage: NetworkImage("https://image.shutterstock.com/image-photo/beautiful-young-woman-profile-view-260nw-1209923779.jpg"),

                ),
              ],
            )
          ),
        )
    );
  }
}

