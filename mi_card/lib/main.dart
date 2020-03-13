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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
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
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.black,
                    height: 120.0,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  color: Colors.orange.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                          '+233 243 314 679',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontFamily: 'SourceSansPro',
                          )
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 50.0),
                  color: Colors.orange.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: Text(
                        'aximilli1212@gmail.com',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'SourceSansPro',
                        )
                    ),
                    )
                  ),
                ),
              ],
            )
          ),
        )
    );
  }
}

