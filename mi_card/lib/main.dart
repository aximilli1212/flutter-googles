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
                  backgroundImage: AssetImage("images/box.png"),
                ),
                Text(
                  'Akumia Sakie',
                  style: TextStyle(
                     fontSize:30.0,
                     fontFamily:'Pacifico',
                     color: Colors.orange,
                     fontWeight:FontWeight.bold ,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                     fontSize:20.0,
                     letterSpacing: 2.5,
                     fontFamily:'SourceSansPro',
                     color: Colors.orange.shade400,
                     fontWeight:FontWeight.normal,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(50.0) ,
                  color: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+233 243 314 679',
                          style: TextStyle(
                          fontFamily: 'SourceSansPro',
                      )
                      )
                    ],
                  ),
                ),
              ],
            )
          ),
        )
    );
  }
}

